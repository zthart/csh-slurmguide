TEXFILES=main.tex

PDFLATEX=pdflatex

PDFFILES=$(TEXFILES:.tex=.pdf)

.PHONY: all clean pdf

all: pdf

pdf: $(PDFFILES)

clean:
	$(RM) $(PDFFILES)

%.pdf %.log: %.tex
	$(PDFLATEX) $<
