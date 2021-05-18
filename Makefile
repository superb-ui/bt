PREFIX ?= /usr/local
MANDIR ?= $(PREFIX)/share/man


install:
	@mkdir -p $(PREFIX)/bin
	@mkdir -p $(MANDIR)/man1

	@cp -p bin/bt     $(PREFIX)/bin/
	@cp -p bin/bt-app $(PREFIX)/bin/
	@cp -p man/bt.1   $(MANDIR)/man1/

	@chmod 755 $(PREFIX)/bin/bt
	@chmod 755 $(PREFIX)/bin/bt-app


uninstall:
	@rm -rf $(PREFIX)/bin/bt
	@rm -rf $(MANDIR)/man1/bt.1*
