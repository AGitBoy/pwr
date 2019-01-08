# Copyright (C) 2019 Aidan Williams

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

PREFIX ?= /usr/local
BINARY ?= pwr
CC ?= cc

SOURCES := $(shell find -name "*.c")
SOURCES += $(shell find -name "*.h")

pwr: $(SOURCES)
	$(CC) $(CFLAGS) -o $(BINARY) $(SOURCES)

debug: $(SOURCES)
	$(CC) $(CFLAGS) -g -o $(BINARY) $(SOURCES)

clean:
	rm $(BINARY)

install: pwr
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m 755 $(BINARY) $(DESTDIR)$(PREFIX)/bin

run: pwr
	./$(BINARY)

