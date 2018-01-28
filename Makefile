gnuplot_SOURCES := $(wildcard *.gnuplot)

png_TARGETS := $(patsubst %.gnuplot,%.png,$(gnuplot_SOURCES))

%.png: %.gnuplot
	gnuplot $<

.DEFAULT_GOAL := all

all: \
	$(png_TARGETS)

clean:
	rm -f *.png *~

