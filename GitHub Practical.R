rm(list=ls())

library(tidyverse)

penguins <- read.table("penguin_data.txt", header=T)

dim(penguins)
head(penguins)

#linear regression
model1 <- lm(body_mass_g ~ flipper_length_mm, data=penguins)
summary(model1)

#plot
ggplot(penguins, aes(x=flipper_length_mm, y= body_mass_g, colour= species)) + geom_point()+stat_smooth(method="lm")
ggsave("figs/1_flipper_bodymass_regression.png")

#this is a comment
