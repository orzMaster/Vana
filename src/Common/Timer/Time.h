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
#ifndef TIMER_TIME_H
#define TIMER_TIME_H

#include <ctime>
#include "../TimeUtilities.h"
#include "Types.h"

namespace Timer {

namespace Time {
	clock_t fromNow(clock_t msec);
	clock_t nthSecondOfHour(uint16_t second);
}

inline
clock_t Time::fromNow(clock_t msec) {
	return msec + TimeUtilities::clock_in_ms();
}

inline
clock_t Time::nthSecondOfHour(uint16_t second) {
	clock_t secThisHour = time(0) % 3600;
	clock_t secDest;

	if (secThisHour > second) // Already passed the time in this hour, try next hour
		secDest = (3600 - secThisHour) + second;
	else // The requested time is within this hour
		secDest = second - secThisHour;

	return TimeUtilities::clock_in_ms() + (secDest * CLOCKS_PER_SEC);
}

}

#endif
