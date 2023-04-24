library(knitr)
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(message = FALSE)
opts_chunk$set(comment="", fig.align="center", tidy=TRUE , cache=TRUE)
library(tidyverse)
library(lattice)


sales <- read_csv("C:/Data/supermarket_sales.csv")



write.csv(sales,"supermarket_sales.csv",row.names=FALSE)




