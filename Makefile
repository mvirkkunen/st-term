RELEASE=stlink/build/Release

all: st-term

st-term: st-term.c $(RELEASE)/libstlink.a
	cc -Istlink/include -I$(RELEASE)/include -o st-term st-term.c $(RELEASE)/libstlink.a `pkg-config --libs --cflags libusb-1.0`

$(RELEASE)/libstlink.a: stlink/Makefile
	make -C stlink

stlink/Makefile:
	git submodule init
	git submodule update

clean:
	rm -f st-term
	make -C stlink clean

.PHONY: clean