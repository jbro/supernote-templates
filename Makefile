SRC = $(wildcard *.typ)
DEP = $(wildcard include/*.typ)
PNG = $(patsubst %.typ, %.png, $(SRC))

all: $(PNG)

%.pdf: %.typ $(DEP)
	typst compile $<
	
%.png: %.pdf
	convert -alpha off -density 300 -geometry 1404\!x1872 $? $@

clean:
	rm -f *.pdf *.png
