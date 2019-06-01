APP := aur-pkg-scripts
PREFIX ?= /usr
SHRDIR ?= $(PREFIX)/share
BINDIR ?= $(PREFIX)/bin
LIBDIR ?= $(PREFIX)/lib

.PHONY: install install-systemd

install-systemd:
	@install -Dm644 systemd/aur-fetch.service -t '$(DESTDIR)$(LIBDIR)/systemd/system/aur-fetch.service'
	@install -Dm644 systemd/aur-fetch.timer -t '$(DESTDIR)$(LIBDIR)/systemd/system/aur-fetch.timer'

install: install-systemd
	@install -Dm755 build-aur-pkg -t '$(DESTDIR)$(BINDIR)/build-aur-pkg'
	@install -Dm755 fetch-aur-pkg -t '$(DESTDIR)$(BINDIR)/fetch-aur-pkg'
	@install -Dm644 LICENSE -t '$(DESTDIR)$(SHRDIR)/licenses/$(PROGNM)'
