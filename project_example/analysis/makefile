all: length_distribution.pdf data-summary.csv

length_distribution.pdf: ../data/data.csv plot.r
	Rscript plot.r

data-summary.csv: ../data/data.csv summarise-data.r
	Rscript summarise-data.r
