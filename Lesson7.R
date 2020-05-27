library(ggplot2)
champts = read.csv("ChampTopScorers.csv")

champts

champts$Age

mean(champts$Age)

min(champts$Age)
max(champts$Age)
range(champts$Age)
median(champts$Age)

filter(champts, Age==19)

summary(champts$Age)
quantile(champts$Age)

#boxplot - allows you to see the spread of data
ggplot(champts, aes(x=Nation, y=Gls)) +
  geom_boxplot()

champts$Age
sort(champts$Age)
order(champts$Age)

champts[order(-champts$Age),]
