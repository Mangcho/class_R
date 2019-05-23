#check the book in 195p
#혼자서 해보기

library(ggplot2)
library(dplyr)

raw <- as.data.frame(ggplot2::economics)
data <- raw


#Q1
ggplot(data=data,aes(x=date,y=psavert)) + geom_line()