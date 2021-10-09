#funzioni

cosa_voglio_fare(dove_o_su_quale_oggetto_applicarla, 
                 come,
                 quanto, etc)


nomefunzione(argomento1, argomento2, argomento3, etc)


nomefunzione(argomenti_obbligatori, argomenti_opzionali)


sqrt(10)

sqrt("ciao")

rep("ciao",5)

sequenza <- seq(0,10,by=2)



miamatrice <- matrix(data=c(10,45,32,67,8,0), 
                     nrow = 2, 
                     ncol = 3,
                     byrow = T)

somma2numeri <- function(a,b){
  return(a+b)
}

#installare pacchetti
install.packages("nomepacchetto")