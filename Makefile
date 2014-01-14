CFLAGS = -DSHAPE -Wall -Werror
LDLIBS = -lXext -lX11
BIN = /usr/bin/X11

MANDIR = /usr/man/man1
MANSUFFIX = 1

all: 9wm

9wm: 9wm.o event.o manage.o menu.o client.o grab.o cursor.o error.o

install: 9wm
	cp 9wm $(BIN)/9wm

install.man:
	cp 9wm.man $(MANDIR)/9wm.$(MANSUFFIX)

$(OBJS): $(HFILES)

clean:
	rm -f 9wm *.o
