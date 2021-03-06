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
#include "AbstractPlayer.h"
#include "MapleServer.h"
#include "MapleSession.h"
#include <boost/bind.hpp>

MapleServer::MapleServer(boost::asio::io_service &io_service,
						 const tcp::endpoint &endpoint,
						 AbstractPlayerFactory *apf,
						 string connectPacketUnknown) :
m_acceptor(io_service, endpoint),
m_apf(apf),
m_session_manager(new SessionManager),
m_connect_packet_unknown(connectPacketUnknown)
{
	start_accept();
}

void MapleServer::stop() {
	m_acceptor.close();
	m_session_manager->stopAll();
}

void MapleServer::start_accept() {
	MapleSessionPtr new_session(new MapleSession(m_acceptor.get_io_service(),
		m_session_manager, m_apf->createPlayer(), true, m_connect_packet_unknown));

    m_acceptor.async_accept(new_session->getSocket(),
		boost::bind(&MapleServer::handle_accept, this, new_session,
			boost::asio::placeholders::error));
}

void MapleServer::handle_accept(MapleSessionPtr new_session,
		const boost::system::error_code &error) {
	if (!error) {
		new_session->start();
		start_accept();
	}
}
