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
#ifndef LUAINSTANCE_H
#define LUAINSTANCE_H

#include "Instance.h"
#include "LuaScriptable.h"
#include "Types.h"
#include <string>

using std::string;

class LuaInstance : public LuaScriptable {
public:
	LuaInstance(const string &name, int32_t playerid);

	bool run(InstanceMessages message);
	bool run(InstanceMessages message, int32_t);
	bool run(InstanceMessages message, const string &);
	bool run(InstanceMessages message, int32_t, int32_t);
	bool run(InstanceMessages message, const string &, int32_t);
	bool run(InstanceMessages message, int32_t, int32_t, int32_t);
	bool run(InstanceMessages message, int32_t, int32_t, int32_t, int32_t);
	bool run(InstanceMessages message, int32_t, int32_t, int32_t, int32_t, int32_t);
};

namespace LuaExports {
	int revertPlayerInstance(lua_State *luaVm);
	int setPlayerInstance(lua_State *luaVm);
}

#endif