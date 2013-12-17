DIRNAME=`dirname $(PWD)`
BASEDIR=`basename $(PWD)`
DATE=`date '+%a%d%b%y-%H%M'`
FILE=$(BASEDIR)-$(DATE).tar.bz2

all: maps6.pdf

maps6.pdf: figures maps6.tex publi.bib Makefile
	latexmk -pdf maps6.tex

figures:
	(cd fig && $(MAKE) -f Makefile)

clean:
	(cd fig && $(MAKE) -f Makefile clean)
	-@rm *.fdb_latexmk *.snm *.fls *.nav *.gz *.toc *.vrb *.pdf *.aux *.log *.gnuplot *.table *.bbl *.blg *.dvi *.out *.spl
