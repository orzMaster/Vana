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
#ifndef MOBHANDLER_H
#define MOBHANDLER_H

#include "GameConstants.h"
#include "Types.h"

class Mob;
class PacketReader;
class Player;
struct MobSkillLevelInfo;

namespace MobHandler {
	extern const int32_t mobstatuses[StatusEffects::Mob::Count];
	int32_t handleMobStatus(int32_t playerid, Mob *mob, int32_t skillid, uint8_t level, uint8_t weapon_type, int8_t hits, int32_t damage = 0);
	void handleMobSkill(Mob *mob, uint8_t skillid, uint8_t level, MobSkillLevelInfo *skillinfo);
	void handleBomb(Player *player, PacketReader &packet);
	void monsterControl(Player *player, PacketReader &packet);
	void friendlyDamaged(Player *player, PacketReader &packet);
	void handleTurncoats(Player *player, PacketReader &packet);
};

#endif