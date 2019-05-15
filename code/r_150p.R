#check the book in 150p
#혼자서 해보기

# 전처리
library(ggplot2)
library(dplyr)
raw <- as.data.frame(ggplot2::mpg)
data <- raw

#Q1
data %>% 
  group_by(class) %>% 
  summarise(mean(cty))

#Q2
data %>% 
  group_by(class) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty))

#Q3
data %>% 
  group_by(manufacturer) %>% 
  summarise(mean_hwy=mean(hwy)) %>% 
  arrange(desc(mean_hwy)) %>% 
  head(3)

#Q4
data %>% 
  group_by(manufacturer) %>% 
  filter(class=="compact") %>% 
  summarise(cnt=n()) %>% 
  arrange(desc(cnt))