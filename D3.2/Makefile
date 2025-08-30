TEXSRC   = D3.2_codesign.tex
BASENAME = $(TEXSRC:.tex=)
PDF      = $(BASENAME).pdf
BIBFILE  = refs.bib

all: quick

quick:
	pdflatex -interaction=nonstopmode -halt-on-error $(TEXSRC)

full: $(BIBFILE)
	pdflatex -interaction=nonstopmode -halt-on-error $(TEXSRC)
	bibtex $(BASENAME)
	pdflatex -interaction=nonstopmode -halt-on-error $(TEXSRC)
	pdflatex -interaction=nonstopmode -halt-on-error $(TEXSRC)

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg $(PDF)

.PHONY: all quick full clean
