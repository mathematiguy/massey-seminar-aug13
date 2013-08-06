library(plyr)

dat <- read.csv('../data/data.csv')

summ <- ddply(dat, .(population), summarize,
              n    = length(length),
              mean = mean(length),
              sd   = sd(length))
      
write.csv(summ, 'data-summary.csv', row.names=F)
