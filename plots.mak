PLOT=./hindheadplot
INSTALL_LOCATION=/var/www/html/hindhead/

CSV:=$(wildcard *.txt)
PNG:=$(CSV:.txt=.png)
SVG:=$(CSV:.txt=.svg)
INSTALL:=$(CSV:.txt=.install)

all: $(PNG)

install: $(INSTALL)

%.png: %.txt
	${PLOT} $^
	
%.install: %.png %.svg
	install -t ${INSTALL_LOCATION} $^
	touch $@

clean:
	-rm $(PNG) $(SVG)

.PHONY: all clean
