data("iris")
head(iris)
attach(iris)

#moda
table(Species)

#min e max
min(Petal.Length)
max(Petal.Length)
n <- length(Petal.Length)
#mediana
n/2
sort(Petal.Length)[c(75,76)]
median(Petal.Length)

#primo quartile
n/4
sort(Petal.Length)[c(38)]

#terzo quartile
n/4*3
sort(Petal.Length)[c(113)]

#quantili in generale
quantile(Petal.Length)

#decili
quantile(Petal.Length,seq(0,1,0.1))

#percentili
View(quantile(Petal.Length,seq(0,1,0.01)))


#media
sum(Petal.Length)/n
mean(Petal.Length)


#valore anomalo
c(Petal.Length,31)
mean(c(Petal.Length,541))
median(c(Petal.Length,541))

mean(c(Petal.Length,541,378))
median(c(Petal.Length,541,378))

#in classi
Petal.Length_cl <- cut(Petal.Length,seq(0,7,1))

distr_freq<-as.data.frame(
cbind(
ni=table(Petal.Length_cl),
fi=table(Petal.Length_cl)/n,
Ni=cumsum(table(Petal.Length_cl)),
Fi=cumsum(table(Petal.Length_cl))/n))

quantile(Petal.Length)

which(distr_freq$Fi > 0.25)[1]


summary(Petal.Length)
summary(iris)

#media ponderata
distr_freq$xCi <- seq(0.5,6.5,1)

distr_freq$xCi * distr_freq$ni

sum(distr_freq$xCi*distr_freq$ni) / sum(distr_freq$ni)

weighted.mean(distr_freq$xCi, distr_freq$ni)

#media geometrica

cellule <- c(1000, 1800, 2100, 3000,5000)
incrementi <- quantmod::Delt(cellule)*100
incrementi <- incrementi[-1,1]



geometric.mean <- function(x){
  return( prod(x)^(1/length(x)) )}

geometric.mean(incrementi)
mean(incrementi)


#media armonica
speed <- c(100,80,40,90)

1/speed

1/mean(1/speed)


armonic.mean <- function(x){
  1 / ( sum(1/x)/length(x) )
}

armonic.mean(speed)
mean(speed)
