# check the book in 133p 
# 혼자서 해보기

library(ggplot2)
library(dplyr)
mpg_raw <- as.data.frame(ggplot2::mpg)

high_displ <- mpg_raw %>% filter(displ>=5)
low_displ <- mpg_raw %>%  filter(displ <=4)
mean(high_displ$hwy)
mean(low_displ$hwy)

# Q1 - low dispel has high hwy

audi_car <- mpg_raw %>% filter(manufacturer == "audi")
toyota_car <- mpg_raw %>% filter(manufacturer == "toyota")
mean(audi_car$cty)
mean(toyota_car$cty)

# Q2 - toyota cars have higher cty than the audi one

three_manu <- mpg_raw %>% filter(manufacturer=="chevrolet" | manufacturer == "ford" | manufacturer == "honda")
# also can use filter(manufacturer %in% c("chevrolet","ford","honda"))
mean(three_manu$hwy)

# Q3 - chevrolet, ford and honda's mean of the hwy is 22.50943