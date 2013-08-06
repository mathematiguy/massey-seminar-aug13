##===  Generate random data
## 3 populations of shellfish sp.; different mean sizes

mean_length_pop1 = 7
mean_length_pop2 = 15
mean_length_pop3 = 12

sd_length = 2

sample_size_pop1 = 30
sample_size_pop2 = 40
sample_size_pop3 = 15000


## Fix seed of random generator for reproducibility
set.seed(12345)

## Generate individual lengths
dat <- rbind(
    ## population 1
    data.frame(population = rep(1,sample_size_pop1),
               individual = 1:sample_size_pop1,
               length     = rnorm(sample_size_pop1, mean_length_pop1, sd_length)),
    ## population 2
    data.frame(population = rep(2,sample_size_pop2),
               individual = 1:sample_size_pop2,
               length     = rnorm(sample_size_pop2, mean_length_pop2, sd_length)),
    ## population 3
    data.frame(population = rep(3,sample_size_pop3),
               individual = 1:sample_size_pop3,
               length     = rnorm(sample_size_pop3, mean_length_pop3, sd_length))
    )

## Round measurements to 2 decimal places
dat$length = round(dat$length, 2)

write.csv(dat, 'data.csv', row.names=F)
