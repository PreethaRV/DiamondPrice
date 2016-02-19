---
title: "Diamonds"
author: "Preetha"
date: "February 18, 2016"
output: word_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

# Load Diamonds

```{r}
library(ggplot2)
data(diamonds)
summary(diamonds)
```

#Data grouped by price, color and price , cut.

```{r}
by(diamonds$price,diamonds$color,sum)
by(diamonds$price,diamonds$color,mean)

by(diamonds$price,diamonds$cut,sum)
by(diamonds$price,diamonds$cut,mean)
```

#Summary view of diamonds data based on carat and color variables

```{r}
summary(diamonds$color,diamonds$price)
```

#Boxplot view of color vs price. Its observed that the mean of the price is going higher in the alphabetic order of color names or color category.

```{r}
qplot(x = color, y=price,data = diamonds,
geom = 'boxplot',color=color)+
  coord_cartesian(ylim = c(0,9000))
```

#Summary view of diamonds data based on carat and color variables

```{r}
summary(diamonds$cut,diamonds$price)
```


#Boxplot view of color vs price. Its observed that the median price of fair and premium cut diamonds are very close to each other though their prices vary drastically.


```{r}

qplot(x = cut, y=price,data = diamonds,
      geom = 'boxplot',color = cut)+
  coord_cartesian(ylim = c(0,7000))
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
