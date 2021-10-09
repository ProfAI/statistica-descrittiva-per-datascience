
x <- rnorm(100000,10,2)
plot(density(x))

#asimmetria
mu<-mean(x)
sigma <- sd(x)

m3 <- sum( (x-mu)^3 ) / length(x)

asim.fisher <- m3 / sigma^3

asim.fisher

#curtosi
m4 <- sum( (x-mu)^4 ) / length(x)
curtosi <- m4 / sigma^4 - 3
curtosi


install.packages("moments")
library(moments)

skewness(x)
kurtosis(x)



library(ggplot2)
data("diamonds")

summary(diamonds)
attach(diamonds)


ggplot()+
  geom_histogram(aes(x=price),
                 stat = "density",
                 col="lightblue",
                 fill="lightblue")


skewness(price)
kurtosis(price)-3
mean(price) ; median(price) 
View(table(price))

install.packages("gghalves")
library(gghalves)

ggplot(data=diamonds)+theme_classic()+
geom_half_violin(mapping = aes(x=cut,y=price),
                 side = "l",fill="lightblue")+
geom_half_boxplot(mapping = aes(x=cut,y=price),
                  side = "r",fill="pink")
