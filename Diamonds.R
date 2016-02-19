# Load Diamonds


library(ggplot2)
data(diamonds)
summary(diamonds)


#Data grouped by price vs color and price vs cut.


by(diamonds$price,diamonds$color,sum)
by(diamonds$price,diamonds$color,mean)

by(diamonds$price,diamonds$cut,sum)
by(diamonds$price,diamonds$cut,mean)


#Summary view of diamonds data based on carat and color variables


summary(diamonds$color,diamonds$price)


#Boxplot view of color vs price. Its observed that the mean of the price is going higher in the alphabetic order of color names or color category.


qplot(x = color, y=price,data = diamonds,
      geom = 'boxplot',color=color)+
  coord_cartesian(ylim = c(0,9000))


#Summary view of diamonds data based on carat and color variables


summary(diamonds$cut,diamonds$price)



#Boxplot view of color vs price. Its observed that the median price of fair and premium cut diamonds are very close to each other though their prices vary drastically.




qplot(x = cut, y=price,data = diamonds,
      geom = 'boxplot',color = cut)+
  coord_cartesian(ylim = c(0,7000))









