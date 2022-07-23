CFLAGS += -DSHAPE -DCOLOR -Wall -pedantic -ansi -D_XOPEN_SOURCE
LDLIBS  = -lXext -lX11
PREFIX ?= /usr
BIN     = $(DESTDIR)$(PREFIX)/bin
MANDIR  = $(DESTDIR)$(PREFIX)/share/man/man1
