BIN ?= defaultbrowser
PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

CC ?= gcc
CFLAGS ?= -O2 -framework Foundation -framework ApplicationServices -framework AppKit

.PHONY: all install uninstall clean

all: $(BIN)

$(BIN):
	$(CC) -o $(BIN) $(CFLAGS) src/main.m

install: $(BIN)
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 $(BIN) $(DESTDIR)$(BINDIR)

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(BIN)

clean:
	rm -f $(BIN)
