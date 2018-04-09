CFLAGS += -DSHAPE -DCOLOR -Wall -pedantic
LDLIBS = -lXext -lX11
PREFIX ?= /usr
BIN = $(DESTDIR)$(PREFIX)/bin

MANDIR = $(DESTDIR)$(PREFIX)/share/man/man1
MANSUFFIX = 1

all: 9wm

9wm: 9wm.o event.o manage.o menu.o client.o grab.o cursor.o error.o

install: 9wm
	mkdir -p $(BIN)
	cp 9wm $(BIN)/9wm

install.man:
	mkdir -p $(MANDIR)
	cp 9wm.man $(MANDIR)/9wm.$(MANSUFFIX)

$(OBJS): $(HFILES)

clean:
	rm -f 9wm *.o
