setwd("C:/Users/dejan/Desktop")
dati_tonni <- read.csv("tonni.csv",sep=";")
lunghezza_cl <- cut(dati_tonni$LUNGHEZZA,
                    breaks = c(10,15,20,25,30))
N=dim(dati_tonni)[1]

ni<-table(lunghezza_cl)
fi<-ni/N
Ni<-cumsum(ni)
Fi<-Ni/N


distr_freq<-as.data.frame(cbind(ni,fi,Ni,Fi))


pie(distr_freq$fi,
    labels = rownames(distr_freq_lungh_cl),
    )

etichette <- paste(rownames(distr_freq_lungh_cl),
                   distr_freq$fi*100,"%")


pie(distr_freq$ni,
    labels = etichette,
    col=c("pink","pink2","pink3","plum4"),
    clockwise = T,
    main = "Distribuzione della lunghezza in classi"
)


barplot(distr_freq$ni,
        xlab = "Classi di lunghezza, cm",
        ylab = "Frequenze assolute",
        names.arg = rownames(distr_freq_lungh_cl),
        ylim = c(0,10),
        col="blue")

barplot(table(dati$LOCALITÀ))
