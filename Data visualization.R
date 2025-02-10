library(ggplot2)
View(diamonds)
ncol(diamonds)
nrow(diamonds)

#histogramm: Uni varient analysis

ggplot(data = diamonds, aes(x=price)) + geom_histogram()

ggplot(data = diamonds)
ggplot(data = diamonds,aes(x=price))
ggplot(data = diamonds,aes(x=price)) + geom_histogram()
ggplot(data = diamonds,aes(x=price)) + geom_histogram(fill="green") #to fill the color as green
ggplot(data = diamonds,aes(x=price)) + geom_histogram(fill="green",col = "orange")

#bar-plot : for a categorical variable

ggplot(data = diamonds,aes(x=cut)) + geom_bar()
ggplot(data = diamonds,aes(x=cut)) + geom_bar(fill = "palegreen4")
ggplot(data = diamonds,aes(x=cut, fill = cut)) + geom_bar()

#Scatter plot...

ggplot(data = diamonds,aes(y=price,x= carat)) + geom_point()
ggplot(data = diamonds,aes(y=price,x= carat,col = cut)) + geom_point()


#box plot...

ggplot(data = diamonds,aes(x = clarity,y = carat)) + geom_boxplot()
ggplot(data = diamonds,aes(x = clarity,y = carat,fill = cut)) + geom_boxplot()
ggplot(data = diamonds,aes(x = clarity,y = carat,fill = clarity)) + geom_boxplot()

#faceting

ggplot(data = diamonds, aes(x=clarity,y=carat,fill = cut)) + geom_boxplot() + facet_grid(~cut)


# adding theme

ggplot(data = diamonds,aes(x = clarity,y = carat)) + geom_boxplot() + facet_grid(~cut) + theme(plot.background = element_rect(fill = "palegreen4"))


