library(reshape2)
library(mosaic)
library(lattice)
library(dplyr)
library(ggplot2)
library(ggExtra)
library(tidyverse)
library(gapminder)
library(AER)

mean(caschool$teachers)
income = caschool$avginc*1000
mean(caschool$avginc)
sd(caschool$avginc)
mean(income)
sd(income)

mean(caschool$math_scr)
smallc = subset(caschool, str <= 20)
243/420
Sm = mean(smallc$math_scr)
bigc = subset(caschool, str>20)
Bm = mean(bigc$math_scr)
Bsd = sd(bigc$math_scr)
Ssd = sd(smallc$math_scr)
Dm = Sm-Bm
Csd = ((Bsd^2)/177)+((Ssd^2)/243)
Tn = abs((Sm-Bm)/sqrt(Csd))

cov(caschool$avginc, caschool$math_scr)
cov(income, caschool$math_scr)
cor(caschool$avginc, caschool$math_scr)
cor(income, caschool$math_scr)
