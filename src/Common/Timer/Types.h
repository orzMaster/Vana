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
#ifndef TIMER_TYPES_H
#define TIMER_TYPES_H

namespace Timer {

struct Types {
	enum {
		BuffTimer,
		CoolTimer,
		HorntailTimer,
		InstanceTimer,
		MapleTVTimer,
		MapTimer,
		MistTimer,
		MobHealTimer,
		MobRemoveTimer,
		MobStatusTimer,
		MobSkillTimer,
		PetTimer,
		PickpocketTimer,
		PingTimer,
		RankTimer,
		ReactionTimer,
		SkillActTimer,
		TradeTimer
	};
};

}

#endif