## Load plyr library (used for ddply function)
library(plyr)

## Read the data
dat <- read.csv('../data/data.csv')

## Get number of individuals in each population, and mean length (and s.d.)
summ <- ddply(dat, .(population), summarize,
              n    = length(length),
              mean = mean(length),
              sd   = sd(length))

## Export results
write.csv(summ, 'data-summary.csv', row.names=F)
