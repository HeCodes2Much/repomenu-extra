# repomenu - menu from therepoclub
# See LICENSE file for copyright and license details.

include config.mk

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f repomenue_* $(DESTDIR)$(PREFIX)/bin
	cp -f bm $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(SHAREPREFIX)/repomenu
	cp -f emoji-list $(DESTDIR)$(SHAREPREFIX)/repomenu


uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/repomenue_*\
		$(DESTDIR)$(PREFIX)/bin/bm\
		$(DESTDIR)$(SHAREPREFIX)/repomenu/emoji-list

.PHONY: all install uninstall
