#check the book in 178p
#혼자서 해보기

library(ggplot2)
library(dplyr)

#이상치 삼입
raw <- as.data.frame(ggplot2::mpg)
raw[c(10,14,58,93),"drv"] <-"k"
raw[c(29,43,129,203),"cty"] <- c(3,4,39,42) 

data <- raw

#Q1
table(data$drv)
data$drv <- ifelse(data$drv %in% c("4","f","r"),data$drv,NA)

#Q2
boxplot(data$cty)$stats
data$cty<-
  ifelse(data$cty>26 | data$cty<9, NA,data$cty)
data<- data %>% 
  filter(!is.na(cty))
boxplot(data$cty)

#Q3
data %>%
  filter(!is.na(drv)& !is.na(cty)) %>% 
  group_by(drv) %>% 
  summarise(mean(cty))