#operazioni matematiche

5+2

4*6

56/3

((5+4)*(2-1))/9

#funzioni matematiche

5^2

sqrt(36)

exp(2)

log(10)



#oggetti

#numeri
a=5

b=7*3

a+b

A=15


#stringhe
saluto = "ciao"

mi_presento = "Ciao, io sono Giuseppe e sono un Data Scientist!"

rm(saluto)

#operatori

3+4==7

5>1

5!=1

pippo <- 5+2==7


#tipi di oggetto

#variabili, contengono un solo dato

numero=5

animale="gatto"


#vettori, concatenano più dati tutti dello stesso tipo

x <- c(1,2,5)
sum(x)

y <- c(7,8,4)

x+y
x*y


c(194,5.2,"pippo")

vettore_misto <- c(numero, animale,"ciaociao")

vettore_misto[1]



#matrici, vettori multidimensionali, tutti dati dello stesso tipo

miamatrice <- matrix(data=c(10,45,32,67,8,0), 
                     nrow = 2, 
                     ncol = 3,
                     byrow = T)

#dataframe, tabelle di dati con possibili colonne diverse

dati <- data.frame(Nome = c("Tizio","Caio","Sempronia"),
           Anni = c(15,19,20),
           sesso = c("M","M","F"))

altri_dati <- as.data.frame(miamatrice)

colnames(altri_dati) <- c("A","B","C")
altri_dati

#liste, liste di oggetti misti

mialista <- list(miamatrice, numero, animale, dati)

mialista[[4]]


