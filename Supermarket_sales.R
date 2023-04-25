library(knitr)
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(message = FALSE)
opts_chunk$set(comment="", fig.align="center", tidy=TRUE , cache=TRUE)
library(tidyverse)
library(lattice)
library(data.table)
library(GGally)


sales <- read_csv("C:/Data/supermarket_sales.csv")



write.csv(sales,"supermarket_sales.csv",row.names=FALSE)

df <- sales[, c(5, 7, 8, 10)]

old <- c("Unit price")
new <- c("UnitPrice")

setnames(df, old, new, skip_absent = TRUE)

ggplot(df, mapping = aes(x = UnitPrice, y = Total, col = Gender)) + geom_point() +
  geom_smooth(method = "lm", se = F, formula = "y~x", col = "darkred", lwd = 2) +
  labs(ylab = "Total", xlab = "Unit Price", subtitle = "Summermarket sales")


ggsave("Summermarket sales.png", width = 6, height = 6)


ggpairs(df[, c(1:3)], mapping = ggplot2::aes(color = 4), upper = list(continuous = wrap("density",alpha = 0.5), combo = "box_no_facet"), lower = list(continuous = wrap("points",alpha = 0.3), combo = wrap("dot_no_facet", alpha = 0.4)), title = "Total sold relating to price and quantity sold")


ggsave("ggpairs.png", width = 6, height = 6)

ggplot(df, mapping = aes(x = UnitPrice, y = Total, col = Gender)) + geom_jitter() +
  geom_smooth(method = "loess", se = T, formula = 'y~poly(x,2)', col = "darkred", lwd = 2) +
  labs(ylab = "Total", xlab = "Unit Price", title ="Summermarket sales" , subtitle = "2nd Order polynimial smoothing")


ggsave("sales & 2nd order polynomial.png", width = 6, height = 6)
