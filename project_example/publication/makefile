all: publication.pdf

publication.tex: publication.rnw \
		../analysis/data-summary.csv \
		../analysis/length_distribution.pdf
	R CMD Sweave publication.rnw

publication.pdf: publication.tex \
		biblio.bib
	pdflatex publication.tex; bibtex publication; pdflatex publication.tex; pdflatex publication.tex
