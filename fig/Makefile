TIKZ=xelatex -enable-write18 -shell-escape
TEXS=$(wildcard *.tex)
PNGS=$(wildcard *.png)
JPGS=$(wildcard *.jpg)
SVGS=$(wildcard *.svg)

OUTPUT_PDF=$(TEXS:tex=pdf) $(PNGS:png=pdf) $(JPGS:jpg=pdf) $(SVGS:svg=pdf)

all: $(OUTPUT_PDF)

clean:
	-@rm -f *.aux *.log *.toc *.pdf *.bbl *.blg *.dvi *.ps *~ *.bak \
	  *.bmt *.out *.lof *.lot *.mlf? *.mlt? *.mtc *.mtc* *.pdf \
	  *.fdb_latexmk

%.pdf: %.png
	convert $< -format "pdf" $@

%.pdf: %.jpg
	convert $< -format "pdf" $@

%.pdf: %.tex
	$(TIKZ) $<

%.pdf: %.svg
	inkscape -z -T -A $@ $<
