SRC = $(wildcard *.typ)
DEP = $(wildcard include/*.typ)
PNG = $(patsubst %.typ, %.png, $(SRC))

all: $(PNG)

%.pdf: %.typ $(DEP)
	typst compile $<

%.png: %.pdf
	which magick || (echo "ImageMagick is not installed"; exit 1)
	magick $< -alpha off -density 300 -geometry 1404\!x1872 $@

clean:
	rm -f *.pdf *.png *.zip
