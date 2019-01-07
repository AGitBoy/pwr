/*
 * Copyright (C) 2019 Aidan Williams
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


#ifndef PWR_H
#define PWR_H

#include <errno.h>
#include <getopt.h>
#include <glob.h>

#include <stdio.h>
#include <stdlib.h>

// Gets power from a sysfs file on Linux
int sysfspower(const char* path);

// Gets average of all batteries power
int pwr();

// Forces a path to read battery value from
int fpwr(const char* frcpath);

#endif
