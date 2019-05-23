#check the book in 188p
#혼자서 해보기

library(ggplot2)
library(dplyr)

mpg_raw <- as.data.frame(ggplot2::mpg)
mid_raw <- as.data.frame(ggplot2::midwest)
mpg_data <- mpg_raw
mid_data <- mid_raw

#Q1
ggplot(data=mpg_data,aes(x=cty,y=hwy)) +
  geom_point()

#Q2
ggplot(data=mid_data,aes(x=poptotal,y=popasian)) +
  geom_point() +
  xlim(0,500000) +
  ylim(0,10000)
  