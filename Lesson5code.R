library(ggplot2)
library(ggrepel)

plxgxa = read.csv("PLxGxA.csv")

top15 <- plxgxa[1:15,]

ggplot(top15, aes(npxGp90, xAp90, label=Player, fill=Squad)) +
  geom_point(size=2, shape=22) +
  geom_label_repel(size=3, vjust=1.5, col='blue', fill='yellow',
                   fontface='bold') +
  labs(x="NPxG per 90", y='xA per 90', title='Expected Goals and Assists, 
       Premier League 19/20', fill='Team') +
  xlim(0.2,1) + ylim(0,0.6) +
  theme(legend.position = c(0.9,0.7)) +
  annotate('text', label = 'Jamie Boyd', x=0.95, y=0.27, fontface='bold') +
  annotate('text', label = 'Data by FBRef', x=0.95, y=0.25, fontface='bold')

