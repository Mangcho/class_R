# check the book in 141p 
# 혼자서 해보기

library(ggplot2)
library(dplyr)

mpg_raw <- as.data.frame(ggplot2::mpg)

audi <- mpg_raw %>%  filter(manufacturer=="audi")
audi %>% arrange(desc(hwy))
audi %>% head(5)