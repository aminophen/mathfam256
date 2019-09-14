KANJI = -kanji=utf8
FONTMAP = -f ipaex.map -f ptex-ipaex.map
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

all: mathfam256.pdf

.SUFFIXES: .tex .dvi .pdf
.tex.dvi:
	platex $(KANJI) $<
	platex $(KANJI) $<
	rm *.aux *.log
.dvi.pdf:
	dvipdfmx $(FONTMAP) $<

.PHONY: install clean
install:
	mkdir -p ${TEXMF}/doc/latex/mathfam256
	cp ./LICENSE ${TEXMF}/doc/latex/mathfam256/
	cp ./README.md ${TEXMF}/doc/latex/mathfam256/
	cp ./*.pdf ${TEXMF}/doc/latex/mathfam256/
	cp ./*.tex ${TEXMF}/doc/latex/mathfam256/
	mkdir -p ${TEXMF}/tex/latex/mathfam256
	cp ./*.sty ${TEXMF}/tex/latex/mathfam256/
clean:
	rm -f *.dvi *.pdf
