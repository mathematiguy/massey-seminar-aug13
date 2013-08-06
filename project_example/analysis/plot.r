## Load ggplot library (used for ggplot function)
library(ggplot2)

## Read data
dat = read.csv('../data/data.csv')

## Transform population to a factor (1, 2, 3 are just identifiers, not quantities)
dat$population = as.factor(dat$population)

## Plot lengths distribution for the 3 population, into a pdf file
cairo_pdf('length_distribution.pdf', 8, 5)
ggplot(dat, aes(length, fill=population)) + geom_density(alpha=0.5)
dev.off()
