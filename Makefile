include config.mk

OBJ = 9wm.o event.o manage.o menu.o client.o grab.o cursor.o error.o

9wm: ${OBJ}
	${CC} $^ ${LDLIBS} -o $@ 

install: 9wm
	mkdir -p ${BIN}
	cp -f $< ${BIN}/$<
	mkdir -p ${MANDIR}
	cp -f $<.man ${MANDIR}/$<.1

uninstall:
	rm -f ${MANDIR}/9wm.1 ${BIN}/9wm

clean:
	rm -f 9wm ${OBJ} 

.PHONY: 9wm install uninstall clean
