
normale_standard <- rnorm(100000,0,1)
hist(normale_standard,freq = F,breaks=100)
lines(density(normale_standard),col=2,lwd=3)

plot(density(normale_standard),xlim=c(-4,12))

normale_5_2 <- rnorm(100000, 5, 2)
lines(density(normale_5_2),col=2)

normale_5_1.5 <- rnorm(100000, 5, 1.5)
lines(density(normale_5_1.5),col=3)

Z <- (normale_5_2 - mean(normale_5_2)) / sd(normale_5_2)
lines(density(Z),col=4)


#calcolo area
mu=170
sigma=10

altezza <- rnorm(100000,mu,sigma)
plot(density(altezza))
abline(v=mu,col=2)
pnorm(170,mu,sigma)


abline(v=155,col=2)
pnorm(155,mu,sigma)

1-pnorm(155,mu,sigma)
1-pnorm(198,mu,sigma)


plot(density(altezza))
abline(v=167,col=2)
abline(v=189,col=2)
pnorm(189,mu,sigma) - pnorm(167,mu,sigma)


altezza_stnd<-(altezza-mu)/sigma

Z189 <- (189-mu)/sigma
Z167 <- (167-mu)/sigma

par(mfrow=c(1,2))
plot(density(altezza))
abline(v=167,col=2)
abline(v=189,col=2)

plot(density(altezza_stnd))
abline(v=Z167,col=2)
abline(v=Z189,col=2)
pnorm(189,mu,sigma) - pnorm(167,mu,sigma)
pnorm(Z189,0,1) - pnorm(Z167,0,1)



#
data("iris")
plot(density(iris$Petal.Length))

