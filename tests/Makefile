# Makefile for test

TESTTEXINPUTS := $(wildcard *.tex)
TESTJOBS := \
	$(patsubst %.tex,%-platex,$(TESTTEXINPUTS)) \
	$(patsubst %.tex,%-uplatex,$(TESTTEXINPUTS)) \
	$(patsubst %.tex,%-lamed,$(TESTTEXINPUTS))
TESTDVIOUTPUTS := $(addsuffix .dvi,$(TESTJOBS))
TESTPDFOUTPUTS := $(addsuffix .pdf,$(TESTJOBS))

.PHONY: test testpdf testdvi clean
test: testpdf

testdvi: $(TESTDVIOUTPUTS)
testpdf: $(TESTPDFOUTPUTS)

%-platex.dvi:
	platex -jobname=$*-platex $*.tex
%-uplatex.dvi:
	uplatex -jobname=$*-uplatex $*.tex
%-lamed.dvi:
	lamed -jobname=$*-lamed $*.tex
%.pdf: %.dvi
	dvipdfmx $*.dvi

clean:
	rm -f *.dvi *.log *.aux *.toc *.out *.pdf
