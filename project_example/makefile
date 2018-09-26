all: publication/publication.pdf


## <! DATA !>

data/data.csv: data/generate-data.r
	cd data  &&  Rscript generate-data.r

## <! ANALYSIS !>
analysis/length_distribution.pdf: data/data.csv analysis/plot.r
	cd analysis  &&  Rscript plot.r

analysis/data-summary.csv: data/data.csv analysis/summarise-data.r
	cd analysis  &&  Rscript summarise-data.r

## <! REPORT !>
publication/publication.tex: publication/publication.rnw \
		analysis/data-summary.csv \
		analysis/length_distribution.pdf
	cd publication  &&  R CMD Sweave publication.rnw

publication/publication.pdf: publication/publication.tex \
		publication/biblio.bib
	cd publication  &&  pdflatex publication.tex && bibtex publication  &&  pdflatex publication.tex  && pdflatex publication.tex
