
library(ggplot2)
library(ggpubr)
library(RColorBrewer)
library('ggsci')
dat <- read.csv("temperature_sens.csv")
colnames(dat)[1] <- "var"
dat$data <- dat$data/1000

#dat<-dat[dat$scenario!="'SSP585'",]
ggplot(dat, aes(x=temperature, y=data, color=model, shape = scenario)) +
  geom_point(alpha=0.4, size=1) +
  #scale_color_jco()+
  geom_smooth(aes(x=temperature, y=data, group=model), method='lm') +
  facet_grid(scale~var, scales = "free") +
  theme_bw(base_size = 15) +
  labs(x = 'Change of mean temperature between 2015 and 2100', y='Change of carbon flux (Pg/year)') +
  scale_color_brewer(palette = "Paired")
  
  
  
  