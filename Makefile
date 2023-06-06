SRC = $(wildcard *.typ)
PNG = $(patsubst %.typ, %.png, $(SRC))

all: $(PNG)

%.pdf: %.typ
	typst compile $?
	
%.png: %.pdf
	convert -alpha off -density 300 -geometry 1404\!x1872 $? $@

clean:
	rm -f *.pdf
