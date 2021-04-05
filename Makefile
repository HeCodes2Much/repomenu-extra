# instamenu - menu from CynicalTeam
# See LICENSE file for copyright and license details.

include config.mk

clean:
	rm -rf $(DESTDIR)$(PREFIX)/bin/instamenue_*\
		$(DESTDIR)$(PREFIX)/bin/bm\
		$(DESTDIR)$(SHAREPREFIX)/instamenu/emoji-list

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f instamenue_* $(DESTDIR)$(PREFIX)/bin
	cp -f bm $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(SHAREPREFIX)/instamenu
	cp -f emoji-list $(DESTDIR)$(SHAREPREFIX)/instamenu


uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/instamenue_*\
		$(DESTDIR)$(PREFIX)/bin/bm\
		$(DESTDIR)$(SHAREPREFIX)/instamenu/emoji-list

.PHONY: all install uninstall
