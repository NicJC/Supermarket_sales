# Supermarket_sales
Supermarket sales by Gender and date

[data](https://raw.githubusercontent.com/NicJC/Supermarket_sales/main/supermarket_sales.csv)

Below is the code for the ggpairs plot

---
ggpairs(df[, c(1:3)], 
mapping = ggplot2::aes(color = 4), 
upper = list(continuous = wrap("density",
alpha = 0.5), 
combo = "box_no_facet"), 
lower = list(continuous = wrap("points",alpha = 0.3), 
combo = wrap("dot_no_facet", 
alpha = 0.4)), 
title = "Total sold relating to price and quantity sold")
---

![alt text](https://github.com/NicJC/Supermarket_sales/blob/main/ggpairs.png)

Below is the code for the ggplot

---
ggplot(df, mapping = aes(x = UnitPrice, y = Total, col = Gender)) + 
geom_point() +
  geom_smooth(method = "lm", se = FALSE, formula = "y~x", col = "darkred", lwd = 2) +  
  labs(ylab = "Total", xlab = "Unit Price", subtitle = "Summermarket sales")
---


![alt text](https://github.com/NicJC/Supermarket_sales/blob/main/Summermarket%20sales.png)
