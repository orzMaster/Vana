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
#ifndef BUDDYLISTPACKET_H
#define BUDDYLISTPACKET_H

#include "Types.h"
#include <string>

using std::string;

class Player;

namespace BuddyListPacket {
	void error(Player *player, uint8_t error);
	void update(Player *player, uint8_t type);
	void showSize(Player *player);

	static const uint8_t first = 0x07;
	static const uint8_t add = 0x0a;
	static const uint8_t remove = 0x12;
}

#endif