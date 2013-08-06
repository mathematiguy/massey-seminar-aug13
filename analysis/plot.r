library(ggplot2)
dat = read.csv('../data/data.csv')

dat$population = as.factor(dat$population)

cairo_pdf('length_distribution.pdf', 7, 5)
ggplot(dat, aes(length, fill=population)) + geom_density(alpha=0.5)
dev.off()
