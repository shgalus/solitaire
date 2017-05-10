# Makefile: description file for make

%.png : %.xcf
	xcf2png -o $@ $<

SHELL = /bin/sh

.PHONY: all clean spotless

XCF = empty.xcf english.xcf first.xcf highlited.xcf instroff.xcf \
	instron.xcf last.xcf next.xcf polish.xcf previous.xcf \
	soundoff.xcf soundon.xcf start.xcf unhighlited.xcf
PNG = $(XCF:.xcf=.png)

all: $(PNG)
clean:
	rm -f $(PNG)
spotless: clean
