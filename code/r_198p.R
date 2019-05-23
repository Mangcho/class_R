#check the book 198p
#혼자서 해보기

library(ggplot2)
library(dplyr)

raw <- as.data.frame(ggplot2::mpg)
data <-raw


#Q1
pl <- data %>% 
  filter(class %in% c("compact","subcompact","suv"))
# (class == c("compact","subcompact","suv")) 와 결과가 다르게 나옴
ggplot(data=pl,aes(x=class,y=cty)) +
  geom_boxplot()