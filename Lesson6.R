library(ggplot2)
library(ggrepel)
champ_top_scorer = read.csv('ChampTopScorers.csv')

champ_top_scorer$Age<23

champ_top_scorer[champ_top_scorer$Age<23,]

install.packages("dplyr")
library("dplyr")

youngenglish = filter(champ_top_scorer, Age<23 & Nation=="ENG")

ggplot(youngenglish, aes(Gls, Ast, label=Player)) +
  geom_point() +
  geom_text()
