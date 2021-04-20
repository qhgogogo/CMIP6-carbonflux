library(ggplot2)
library(ggpubr)
library(RColorBrewer)
library("ggsci")
dat <- read.csv('global_north.csv')
colnames(dat)[1] <- 'model'
colnames(dat)[2] <- 'scenario'
colnames(dat)[3] <- 'variable'



ggplot(dat, aes(x=glb, y=nor, color=model)) +
  geom_point(alpha=0.4, size=1) +
  #scale_color_jco()+
  geom_smooth(aes(x=glb, y=nor, group=model), method='lm') +
  facet_grid(rows=vars(scenario),cols=vars(variable), scales = "free") +
  theme_bw(base_size = 15) +
  labs(x = 'Change of Global carbon flux(Pg/year)', y='Change of NHL carbon flux (Pg/year)') +
  scale_color_brewer(palette = "Paired")

