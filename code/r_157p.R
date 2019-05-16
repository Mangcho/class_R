#check the book in 156p
#혼자서 해보기

library(ggplot2)
library(dplyr)

raw <- as.data.frame(ggplot2::mpg)
data <- raw

fuel <- data.frame(fl=c("c","d","e","p","r"),
                   price_fl = c(2.35,2.38,2.11,2.76,2.22),
                   stringsAsFactors = F)

data <- left_join(data,fuel,by="fl")

data %>% 
  select(model,fl,price_fl) %>% 
  head(5)