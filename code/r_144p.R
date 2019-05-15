# Check the book in 144p
# 혼자서 해보기

library(ggplot2)
library(dplyr)


#Q1
mpg <- as.data.frame(ggplot2::mpg) # 이 코드는 복사가 아니라 데이터 불러오기임
mpg_raw<-mpg
mpg_raw <- mpg_raw %>%  mutate(tot_var=cty+hwy)

# Q2
mpg_raw <- mpg_raw %>% mutate(avg_var=(tot_var/2))

# Q3
mpg_raw %>% arrange(desc(avg_var)) %>% 
  head(3)

### Q4
#mpg %>% 
#  mutate(tot_var = cty+hwy) %>% 
#  mutate(avg_var = tot_var/2) %>% 
#  arrange(desc(avg_var)) %>% 
#  head(3)
###