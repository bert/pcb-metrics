gnuplot_SOURCES := $(wildcard *.gnuplot)

png_TARGETS := $(patsubst %.gnuplot,%.png,$(gnuplot_SOURCES))

%.png: %.gnuplot
	gnuplot $<

.DEFAULT_GOAL := all

all: \
	$(png_TARGETS)
	mv *.png graphs

clean:
	rm -f *.png *~

