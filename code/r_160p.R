#check the book in 160p
#분석 도전

library(ggplot2)
library(dplyr)

raw <- as.data.frame(ggplot2::midwest)
data<- raw

#Q1
data<-
  data %>% 
  mutate(popamature = 100* (1- (popadults/poptotal)))

#Q2
data %>%
  arrange(desc(popamature)) %>% 
  select(county,popamature) %>% 
  head(5)

#Q3
data<-
  data %>% 
  mutate(young=ifelse(popamature>=40,"large",
                      ifelse(popamature>30 & popamature<40,"middle","small")))
table(data$young)

#Q4
data<-
  data %>%
  mutate(asian=100*(popasian/poptotal))
data %>%
  arrange(asian) %>% 
  select(state,county,asian) %>% 
  tail(10)