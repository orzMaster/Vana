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
#ifndef LUAPORTAL_H
#define LUAPORTAL_H

#include "LuaScriptable.h"
#include <boost/tr1/unordered_map.hpp>
#include <string>

using std::tr1::unordered_map;
using std::string;

struct PortalInfo;

class LuaPortal : public LuaScriptable {
public:
	LuaPortal(const string &filename, int32_t playerid, PortalInfo *portal);
private:
	PortalInfo *portal;
};

namespace LuaExports {
	PortalInfo * getPortal(lua_State *luaVm);
	extern unordered_map<int32_t, PortalInfo *> portals;

	// Portal exports

	// Portal
	int getPortalName(lua_State *luaVm);
	int instantWarp(lua_State *luaVm);
	int playPortalSe(lua_State *luaVm);
};

#endif
