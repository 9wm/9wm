CFLAGS += -DSHAPE -DCOLOR -Wall -pedantic -ansi -D_XOPEN_SOURCE
LDLIBS  = -lXext -lX11
PREFIX ?= /usr
BIN     = $(DESTDIR)$(PREFIX)/bin
MANSUFFIX = 1
MANDIR  = $(DESTDIR)$(PREFIX)/share/man/man${MANSUFFIX}
