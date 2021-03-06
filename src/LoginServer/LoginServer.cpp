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
#include "LoginServer.h"
#include "ConnectionManager.h"
#include "RankingCalculator.h"
#include "Worlds.h"
#include <boost/format.hpp>

LoginServer * LoginServer::singleton = 0;

void LoginServer::listen() {
	ConnectionManager::Instance()->accept(port, new PlayerLoginFactory(), "0");
	ConnectionManager::Instance()->accept(inter_port, new LoginServerAcceptPlayerFactory());
}

void LoginServer::loadData() {
	Initializing::checkSchemaVersion(true);
	Initializing::setUsersOffline(1);
	RankingCalculator::setTimer();
}

void LoginServer::loadConfig() {
	ConfigFile config("conf/loginserver.lua");
	pinEnabled = config.getBool("pin");
	port = config.getShort("port");
	inter_port = config.getShort("inter_port");
	invalid_login_threshold = config.getInt("invalid_login_threshold");
	to_listen = true;

	// Let's load our worlds
	config.loadFile("conf/worlds.lua");
	boost::format formatter("world%i_%s"); // The formater we'll be using
	size_t i = 0;
	while (1) {
		formatter % i % "name";
		if (!config.keyExist(formatter.str()))
			break; //No more worlds

		World *world = new World();
		world->name = config.getString(formatter.str());

		formatter % i % "channels";
		world->maxChannels = config.getInt(formatter.str());

		formatter % i % "id";
		world->id = (uint8_t) config.getInt(formatter.str());

		formatter % i % "ribbon";
		world->ribbon = (uint8_t) config.getInt(formatter.str());

		formatter % i % "port";
		world->port = config.getShort(formatter.str());

		formatter % i % "exprate";
		world->exprate = config.getInt(formatter.str());

		formatter % i % "questexprate";
		world->questexprate = config.getInt(formatter.str());

		formatter % i % "mesorate";
		world->mesorate = config.getInt(formatter.str());

		formatter % i % "droprate";
		world->droprate = config.getInt(formatter.str());

		formatter % i % "maxstats";
		world->maxStats = config.getShort(formatter.str());

		formatter % i % "max_multi_level";
		world->maxMultiLevel = (uint8_t) config.getInt(formatter.str());

		formatter % i % "event_msg";
		world->eventMsg = config.getString(formatter.str());

		formatter % i % "scrolling_header";
		world->scrollingHeader = config.getString(formatter.str());

		formatter % i % "maxchars";
		world->maxChars = config.getInt(formatter.str());

		world->connected = false;
		Worlds::worlds[world->id] = world;
		i++;
	}
}
