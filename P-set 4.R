install.packages(c("sandwich" , "lmtest"))
library(reshape2)
library(mosaic)
library(lattice)
library(dplyr)
library(ggplot2)
library(ggExtra)
library(tidyverse)
library(gapminder)
library(AER)
library(sandwich)
library(lmtest)

M1 <- lm(birthweight ~ smoker, data=BS)
M1

M2 <- lm(birthweight ~ (smoker + alcohol + nprevist), data=BS)
M2

summary(M2)
summary(M1)
