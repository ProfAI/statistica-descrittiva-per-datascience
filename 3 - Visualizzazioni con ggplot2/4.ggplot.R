#installazione
install.packages("ggplot2")
library(ggplot2)


ggplot(dati)+
  geometria_del_grafico(
    estetiche(
      x = variabile su asse x,
      y = variabile su asse y,
      col = variabile che regola il colore,
    ),
    parametri opzionali
  )+
  altra_geometria(...)+
  personalizzazione_assi()+
  tema()+
  etc.etc()
  



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



ggplot(data = distr_freq)+
  geom_col(    
    aes(x=rownames(distr_freq),
        y=ni),
    col="red",
    fill="darkblue")+
  labs(x="Lunghezza in classi",
       y="Frequenze assolute",
       title="Grafico a barre")+
  theme_bw()+
  scale_y_continuous(breaks = seq(0,10,1))



dati_tonni$lunghezza_cl<-lunghezza_cl
head(dati_tonni)

ggplot(data = dati_tonni)+
  geom_bar(
    aes(x=lunghezza_cl),
    stat = "count",
    col="black")+
  labs(x="Lunghezza in classi",
       y="Frequenze assolute")+
  theme_bw()+
  scale_y_continuous(breaks = seq(0,10,1))


ggplot(data = dati_tonni)+
  geom_bar(
    aes(x=lunghezza_cl,
        fill=SESSO), #LOCALITÀ
    position = "stack", #dodge #fill
    col="black")+
  labs(x="Lunghezza in classi",
       y="Frequenze assolute")+
  theme_bw()+
  scale_y_continuous(breaks = seq(0,10,1))



ggplot(data = dati_tonni)+
  geom_bar(
    aes(x=lunghezza_cl,
        fill=LOCALITÀ), #LOCALITÀ
    position = "stack", #dodge #fill 
    col="black")+
  labs(x="Lunghezza in classi",
       y="Frequenze assolute")+
  theme_bw()+
  scale_y_continuous(breaks = seq(0,10,1))+
  theme(legend.position = "bottom")



#serie storiche

dati <- read.csv("nascite e morti.csv")
dati <- dati[,-1]

ggplot(data=dati)+
  geom_col(aes(x=tempo,y=morti))+
  geom_line(aes(x=tempo,y=morti),col=2,lwd=1)+ #dopo
  ylim(c(0,1300))


ggplot(data=dati)+
  geom_line(aes(x=tempo,y=morti),col="red",lwd=1)+
  geom_line(aes(x=tempo,y=nascite),col="green3",lwd=1)+
  geom_point(aes(x=tempo,y=morti),col="red",lwd=4)+
  geom_point(aes(x=tempo,y=nascite),col="green3",lwd=4)+
  labs(x="anni",
       y="morti/nascite",
       title="Serie storica")


ggplot(data=dati)+
  geom_line(aes(x=tempo,y=morti,col="morti"),lwd=1)+
  geom_line(aes(x=tempo,y=nascite,col="nascite"),lwd=1)+
  geom_point(aes(x=tempo,y=morti),col="red",lwd=4)+
  geom_point(aes(x=tempo,y=nascite),col="green3",lwd=4)+
  labs(x="anni",
       y="morti/nascite",
       title="Serie storica")+
    scale_color_manual(
    name   = 'Legenda',
    breaks = c('morti', 'nascite'),
    values = c("red", "green3"),
    labels = c('Morti', 'Nascite'))+
  geom_text(aes(x=tempo,y=morti+10,label=morti))
  theme(axis.text.x = element_text(angle = 90

install.packages("mapdata")
library(mapdata)
italia <- map_data("italy")

ggplot(data=italia)+
  theme_bw()+
  scale_y_continuous(limits = c(37,47))+
  scale_x_continuous(limits = c(7,18))+
  geom_map(map = italia,
           mapping = aes(map_id=region,fill=group),
           #fill="green3", #prima questo
           col="black")

