SRC = $(wildcard *.typ)
PNG = $(patsubst %.typ, %.png, $(SRC))

all: $(PNG)

%.pdf: %.typ
	typst compile $?
	
%.png: %.pdf
	convert -density 300 -geometry 1404\!x1872 $? templates/$@

clean:
	rm -f *.pdf
