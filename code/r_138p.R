# check the book in 138p 
# 혼자서 해보기

library(ggplot2)
library(dplyr)

mpg_raw = as.data.frame(ggplot2::mpg)

# Q1

selected <- mpg_raw %>% select(class, cty)
head(selected)


# Q2

suv <- selected %>% filter(class=="suv")
compact <- selected %>% filter(class=="compact")
mean(suv$cty)
mean(compact$cty)