PREFIX ?= /usr/local
MANDIR ?= $(PREFIX)/share/man


install:
	@mkdir -p $(PREFIX)/bin
	@mkdir -p $(MANDIR)/man1

	@cp -p bin/bt     $(PREFIX)/bin/
	@cp -p bin/bt-app $(PREFIX)/bin/
	@cp -p man/bt.1   $(MANDIR)/man1/
	@cp -p bt.desktop /usr/share/applications/bt.desktop

	@chmod 755 $(PREFIX)/bin/bt
	@chmod 755 $(PREFIX)/bin/bt-app
	@chmod 755 /usr/share/applications/bt.desktop


uninstall:
	@rm -rf $(PREFIX)/bin/bt
	@rm -rf $(PREFIX)/bin/bt-app
	@rm -rf $(MANDIR)/man1/bt.1*
	@rm -rf /usr/share/applications/bt.desktop
