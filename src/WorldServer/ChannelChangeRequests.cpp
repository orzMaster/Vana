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
#include "ChannelChangeRequests.h"
#include "WorldServerAcceptPacket.h"

ChannelChangeRequests * ChannelChangeRequests::singleton = 0;

void ChannelChangeRequests::addPendingPlayer(int32_t id, uint16_t channelid) {
	m_map[id] = channelid;
}

void ChannelChangeRequests::removePendingPlayer(int32_t id) {
	if (m_map.find(id) != m_map.end())
		m_map.erase(id);
}

void ChannelChangeRequests::removePendingPlayerEarly(int32_t id) {
	if (m_map.find(id) != m_map.end()) {
		uint16_t channel = m_map[id];
		WorldServerAcceptPacket::sendHeldPacketRemoval(channel, id);
		m_map.erase(id);
	}
}

uint16_t ChannelChangeRequests::getPendingPlayerChannel(int32_t id) {
	return (m_map.find(id) != m_map.end() ? m_map[id] : -1);
}