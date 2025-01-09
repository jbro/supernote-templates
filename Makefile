SRC = $(wildcard *.typ)
DEP = $(wildcard include/*.typ)
PNG = $(patsubst %.typ, %.png, $(SRC))

ifeq ($(shell uname), Linux)
	CMD = imagemagick
else
	CMD = magick
endif


all: $(PNG)

%.pdf: %.typ $(DEP)
	typst compile $<

%.png: %.pdf
	$(CMD) $< -alpha off -density 300 -geometry 1404\!x1872 $@

clean:
	rm -f *.pdf *.png *.zip
