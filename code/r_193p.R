#check the book in 193p
#혼자서 해보기

library(ggplot2)
library(dplyr)

raw <- as.data.frame(ggplot2::mpg)
data <- raw

#Q1
pl <- data %>% 
  filter(class =="suv") %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty=mean(cty)) %>%
  arrange(desc(mean_cty)) %>% 
  head(5)
ggplot(data = pl, aes(x=reorder(manufacturer,-mean_cty),y=mean_cty)) +
  geom_col()

#Q2
ggplot(data=data,aes(x=class))+geom_bar()