library(ggplot2)
library(dplyr)

midwest_raw = as.data.frame(ggplot2::midwest)
md <- midwest_raw

summary(md)

md <- rename(md, total = poptotal)
md <- rename(md, asian = popasian)

md$asian_per <- (md$asian/md$total)*100
hist(md$asian_per)

mean(md$asian_per)
md$asian_avg <- ifelse(md$asian_per > mean(md$asian_per), "large", "small")

table(md$asian_avg)
qplot(md$asian_avg)