data(iris)

library(tidyverse)
library(ggplot2)
ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length)) +

facet_wrap(~ Species, scales = "free_x") +

geom_point() +

geom_smooth(formula = y ~ x, method = "lm", se = FALSE) +
ggpubr::stat_cor(aes(label=tolower(..r.label..)),label.y=8.0)
theme_classic()+


labs(x = "Sepal Width",

        y = "Sepal Length",

        title = "Sepal Length vs. Sepal Width in Irises",

        subtitle = "Grouped by Species")

#######
my_data=mtcars
my_data
cor_1=cor.test(my_data$wt, my_data$mpg, method = "pearson")
cor_1
########
my_data=mtcars[,c(1,3,4,5)]
my_data
head(my_data,5)
cor_2=round(cor(my_data,method="pearson"),4)
cor_2
#######
install.packages("corrplot")
library(corrplot)
my_data=mtcars[,c(1,3,4,5)]
my_data
head(my_data,5)
cor_3=corrplot(cor_2, type = "upper",order = "hclust",tl.col = "blue", tl.srt = 45)
cor_3

########

install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
my_data = mtcars[, c(1,3,4,5)]
head(my_data,5)
cor_4=chart.Correlation(my_data,histogram=TRUE,method="pearson")
#########

cor_5=cor(mtcars[,c(1,3,4,5)])
cor_5
symnum(cor_5, abbr.colnames = F)

#######
my_data = mtcars[, c(1,3,4,5)]
head(my_data,5)
cor_6=round(cor(my_data),4)
cor_6
install.packages("ggcorrplot")
library(ggcorrplot)
ggcorrplot(cor_6)
ggcorrplot(cor_6,method="circle")
ggcorrplot(cor_6,hc.order = T,type = "lower",lab = T)







