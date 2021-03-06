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
#ifndef IPUTILITIES
#define IPUTILITIES

#include "Types.h"
#include "PacketCreator.h"
#include <string>
#include <vector>

using std::string;
using std::vector;

class PakcetReader;

namespace IpUtilities {
	uint32_t stringToIp(const string &name);
	string ipToString(uint32_t ip);
	uint32_t matchIpSubnet(uint32_t ip, const vector<vector<uint32_t> > &ipMatrix, uint32_t defaultIp = 0);

	// Used for receiving vectors of external IPs
	void extractExternalIp(PacketReader &packet, vector<vector<uint32_t> > &extIp);
	// Used for passing vectors of external IPs
	struct SendIpArray {
	public:
		SendIpArray(PacketCreator &packet) : packet(packet) { }

		void operator()(vector<uint32_t> ip) {
			packet.add<uint32_t>(ip[0]); // IP
			packet.add<uint32_t>(ip[1]); // Subnet
		}

	private:
		PacketCreator &packet;
	};
};

#endif
