PLOT=./hindheadplot

CSV:=$(wildcard *.txt)
PNG:=$(CSV:.txt=.png)
SVG:=$(CSV:.txt=.svg)

all: $(PNG)

%.png: %.txt
	${PLOT} $^

clean:
	-rm $(PNG) $(SVG)

.PHONY: all clean
