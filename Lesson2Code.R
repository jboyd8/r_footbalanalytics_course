read.csv("PLTable.csv")

PLTable = read.csv("PLTable.csv")

PLTable

PLTable[20,2]

PLTable[,2]

PLTable[1:4,2]

PLTable[1,]

PLTable$Team

PLTable$Team[1:4]

install.packages("ggplot2")

library(ggplot2)

PLTable

25/28
27/29
PLTable['Pts']/PLTable['P']

ggplot(top4bottom4, aes(GF, GA, label=Team)) + 
  geom_point(size=2, shape=20, col="red") + 
  geom_text(size=3.5, vjust=1.5, col="blue") +
  labs(x="Goals For", y="Goals Against", 
       title="Goals For and Against, Premier League 19/20") +
  xlim(20,70) + ylim(20,70)

top4 <- PLTable[1:4,]
top4bottom4 <- PLTable[c(1:4, 17:20),]

plxgxa <- read.csv("PLxGxA.csv")

top15 <- plxgxa[1:15,]

top15

ggplot(top15, aes(Min, Gls, label=Player, col=Squad)) + 
  geom_point(size=2, shape=20) + 
  geom_label_repel(size=3.5, vjust=1.5, col='blue', fill='yellow',
                   fontface='bold') +
  labs(x="Minutes Played", y="Goals Scored", 
       title="Goals Scored vs Minutes Played") +
  ylim(10,20)

install.packages("ggrepel")
library("ggrepel")
library(ggrepel)
