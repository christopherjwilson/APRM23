## some includes
library(knitr)
library(tidyverse)
library(car)

participant <- 1:20
happiness <- rnorm(20, mean = 10, sd = 1.4)
intervention <- factor(sample(c(1,2), 20, replace = T))

happinessSample <- as.data.frame(cbind(participant,intervention, happiness))
