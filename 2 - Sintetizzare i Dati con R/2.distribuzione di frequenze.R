getwd()


#imposta la cartella di lavoro
setwd("C:/Users/dejan/Desktop")
#o manualmente

#leggi i dati
dati <- read.csv("tonni.csv",sep=";")
dim(dati)
N=dim(dati)[1]


#distribuzione di frequenze
table(dati["SESSO"])
freq_ass <- table(dati$SESSO)
freq_rel <- table(dati$SESSO)/N
distr_freq_SESSO<-cbind(freq_ass,freq_rel)
distr_freq_SESSO


#distribuzione di frequenze
freq_ass <- table(dati$LOCALITÀ)
freq_rel <- table(dati$LOCALITÀ)/N
distr_freq_LOC<-cbind(freq_ass,freq_rel)
distr_freq_LOC



#suddivisione in classi
min(dati$LUNGHEZZA)
max(dati$LUNGHEZZA)

lunghezza_cl <- cut(dati$LUNGHEZZA,
                  breaks = c(10,15,20,25,30))
lunghezza_cl

ni<-table(lunghezza_cl)
fi<-ni/N
Ni<-cumsum(ni)
Fi<-Ni/N
cbind(ni,fi,Ni,Fi)


distr_freq_lungh_cl<-as.data.frame(cbind(ni,fi,Ni,Fi))

write.csv(distr_freq_lungh_cl,"lunghezza in classi.csv")


table(dati$SESSO,lunghezza_cl)
table(dati$LOCALITÀ,lunghezza_cl)
