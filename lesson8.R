library(ggplot2)
library(ggrepel)
library(dplyr)
plxgxa = read.csv("PLxGxA1.csv")

head(plxgxa)

highxG <- filter(plxgxa, npxGp90>0.5)
highxGxA <- filter(plxgxa, npxGp90>0.5 | xAp90>0.3)
age <- filter(plxgxa, Age<20)

yint <- mean(plxgxa$xAp90)
xint <- mean(plxgxa$npxGp90)

ggplot(plxgxa, aes(npxGp90, xAp90, label=Player)) +
  geom_point()+
  geom_text_repel(data = highxGxA, size=3, col='blue') +
  geom_text_repel(data = age, size=3, col='red') +
  xlim(0,1) + ylim(0,0.6) +
  geom_hline(yintercept = yint, col="green", size=1, linetype=2) +
  geom_vline(xintercept = xint, col="green", size=1, linetype=2) +
  geom_abline(intercept = 0, slope = 0.6, col="green", size=1, linetype=2)
