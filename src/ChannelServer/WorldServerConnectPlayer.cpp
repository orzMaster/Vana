/*
Copyright (C) 2008-2009 Vana Development Team

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; version 2
of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
#include "WorldServerConnectPlayer.h"
#include "WorldServerConnectPacket.h"
#include "WorldServerConnectHandler.h"
#include "Party.h"
#include "PlayersPacket.h"
#include "InterHeader.h"
#include "PacketReader.h"

WorldServerConnectPlayer::WorldServerConnectPlayer() {
	type = INTER_CHANNEL_SERVER;
}

void WorldServerConnectPlayer::realHandleRequest(PacketReader &packet) {
	switch (packet.get<int16_t>()) {
		case INTER_LOGIN_CHANNEL_CONNECT: WorldServerConnectHandler::connectLogin(this, packet); break;
		case INTER_CHANNEL_CONNECT: WorldServerConnectHandler::connect(this, packet); break;
		case INTER_PLAYER_CHANGE_CHANNEL: WorldServerConnectHandler::playerChangeChannel(this, packet); break;
		case INTER_TO_PLAYERS: PlayersPacket::sendToPlayers(packet.getBuffer(), packet.getBufferLength()); break;
		case INTER_FIND: WorldServerConnectHandler::findPlayer(packet); break;
		case INTER_WHISPER: WorldServerConnectHandler::whisperPlayer(packet); break;
		case INTER_SCROLLING_HEADER: WorldServerConnectHandler::scrollingHeader(packet); break;
		case INTER_NEW_CONNECTABLE: WorldServerConnectHandler::newConnectable(packet); break;
		case INTER_FORWARD_TO: WorldServerConnectHandler::forwardPacket(packet); break;
		case INTER_SET_RATES: WorldServerConnectHandler::setRates(packet); break;
		case INTER_PARTY_OPERATION: Party::handleResponse(packet); break;
	}
}

void WorldServerConnectPlayer::playerChangeChannel(int32_t playerid, uint16_t channel) {
	WorldServerConnectPacket::playerChangeChannel(this, playerid, channel);
}
