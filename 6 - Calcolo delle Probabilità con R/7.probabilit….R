library(ggplot2)


dado <- c(1,2,3,4,5,6)
sample(dado,1)
lanci <- sample(dado,36,replace = T)

ggplot()+
  geom_histogram(aes(x=lanci),
                 stat = "count",
                 col="black",
                 fill="lightblue")



dado1 <- c(1,2,3,4,5,6)
dado2 <- c(1,2,3,4,5,6)



lancio2dadi <- function(d1,d2,n){
  
  somma <- sample(d1,n,replace = T) + sample(d2,n,replace = T)
  
  return(somma)
}


lanci<-lancio2dadi(dado1,dado2,100000)

ggplot()+
  geom_histogram(aes(x=lanci,
                     y=stat(count/sum(count))),
                 stat = "count",
                 col="black",
                 fill="lightblue")




dado <- c(1,2,3,4,5,6)
moneta <- c(3,6)


dado_moneta <- function(d1,m,n){
  
  molt <- sample(d1,n,replace = T) *
    sample(d1,n,replace = T) *
    sample(m,n,replace = T)
  
  return(molt)
}

lanci<-dado_moneta(dado,moneta,100000)

ggplot()+
  geom_histogram(aes(x=lanci),
                 stat = "count",
                 col="black",
                 fill="lightblue")


