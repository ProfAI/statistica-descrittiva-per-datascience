library(ggplot2)
data("diamonds")

head(diamonds)
summary(diamonds)
attach(diamonds)

#variabile prezzo

summary(price)

range(price)
18823-326

IQR(price)
5324-950

ggplot()+
  geom_point(aes(x=seq(1,length(price)),
             y=sort(price)))+
  geom_hline(yintercept = quantile(price),col=2)+
  geom_label(aes(x=50000,
                y=quantile(price),
                label=quantile(price)),
                col=2)

boxplot(price)
abline(h=quantile(price),col=2)
abline(h=quantile(price,0.75) + 1.5*IQR(price),col=4)

boxplot(price~color)


ggplot(data = diamonds)+
  geom_boxplot(aes(
    x=color,
    y=price),
    fill="lightblue")


ggplot(data = diamonds)+
  geom_boxplot(aes(
    x=color,
    y=price,
    fill=cut))


#varianza, deviazione standard e coefficiente di variazione

mu=mean(price)
n=length(price)

sigma2 = sum((price-mu)^2)/n

sigma = sqrt(sigma2)

var(price); sd(price)

mean(z); sd(z)

CV <-function(x){
  return( sd(x)/mean(x) * 100 )
}

CV(price); CV(z)


#indice di gini

gini.index <- function(x){
  ni = table(x)
  fi = ni/length(x)
  fi2 = fi^2
  J = length(table(x))
  
  gini = 1-sum(fi2)
  gini.norm = gini/((J-1)/J)
  
  return(gini.norm)
}

table(color)/length(color)
gini.index(color)







install.packages("dplyr")
library(dplyr)

depth_mu_sigma <- 
  diamonds %>% 
  group_by(cut) %>% 
  summarise(media=mean(depth),
            devst=sd(depth))

ggplot(depth_mu_sigma)+theme_bw()+
  geom_col(aes(x=cut, y=media),fill="black")+
  geom_errorbar(aes(x=cut,
                    ymin=media-devst,
                    ymax=media+devst),col=2)


