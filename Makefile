DIRNAME=`dirname $(PWD)`
BASEDIR=`basename $(PWD)`
DATE=`date '+%a%d%b%y-%H%M'`
FILE=$(BASEDIR)-$(DATE).tar.bz2

all: devlog.pdf

devlog.pdf: figures devlog.tex publi.bib Makefile
	latexmk -pdf devlog.tex

figures:
	(cd fig && $(MAKE) -f Makefile)

clean:
	(cd fig && $(MAKE) -f Makefile clean)
	-@rm *.pdf *.aux *.log *.gnuplot *.table *.bbl *.blg *.dvi *.out *.spl
