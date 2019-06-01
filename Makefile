APP := aur-pkg-scripts
PREFIX ?= /usr
SHRDIR ?= $(PREFIX)/share
BINDIR ?= $(PREFIX)/bin
LIBDIR ?= $(PREFIX)/lib

.PHONY: install install-systemd

install-systemd:
	@install -Dm644 systemd/aur-fetch.service -t '$(DESTDIR)$(LIBDIR)/systemd/system'
	@install -Dm644 systemd/aur-fetch.timer -t '$(DESTDIR)$(LIBDIR)/systemd/system'

install: install-systemd
	@install -Dm755 build-aur-pkg -t '$(DESTDIR)$(BINDIR)'
	@install -Dm755 fetch-aur-pkg -t '$(DESTDIR)$(BINDIR)'
	@install -Dm644 LICENSE -t '$(DESTDIR)$(SHRDIR)/licenses/$(APP)'
