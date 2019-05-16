#check the book in 170p
#혼자서 해보기

library(ggplot2)
library(dplyr)

raw <- as.data.frame(ggplot2::mpg)
data <- raw
data[c(65, 124, 131, 153, 212), "hwy"]<-NA #강제로 NA 할당


#Q1
table(is.na(data$drv))
table(is.na(data$hwy)) # 결측치 5개 확인됨

#Q2
data %>% 
  filter(!(is.na(hwy))) %>% 
  group_by(drv) %>% 
  summarise(mean_hwy=mean(hwy))