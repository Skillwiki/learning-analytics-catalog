                               #Identification de la s�quence p�dagogique � �tudier
names.vid=c("S1.L1","S1.L2","S1.L3","S1.L4","S1.L5","S1.L6","S2.L1","S2.L2","S2.L3","S2.L4","S2.L5","S3.L1.1","S3.L1.2",
 "S3.L2", "S3.L3", "S3.L4","S3.L5", "S4.L1.1","S4.L1.2", "S4.L2", "S4.L3","S4.L4", "S4.L5","S5.L1.1","S5.L1.2","S5.L2","S5.L3","S5.L4","S5.L5")

effec.1=effec.log.1

names(effec.1)

db.int=effec.1[,c(match(names.vid, names(effec.1)))] #    On s�lectionne dans le jeu de donn�es exactement les vid�os que l'on veut.
effec.1$prop.videos.vues=rep(NA, nrow(effec.1))
effec.1$sum.videos.vues=rep(NA, nrow(effec.1))
for (i in 1:nrow(effec.1)) {
effec.1$prop.videos.vues[i]=sum(db.int[i,])/length(names.vid) #Proportion des vid�os vues
effec.1$sum.videos.vues[i]=sum(db.int[i,])
     }
     summary(effec.1$prop.videos.vues)

with(effec.1, )

effec.1$videos.deciles=rep(NA, nrow(effec.1))
for (i in 1:nrow(effec.1)) {effec.1$videos.deciles[i]=floor(effec.1$prop.videos.vues[i]*10)}
hist(effec.1$videos.deciles)
hist(effec.1$sum.videos.vues)

a=with(effec.1, aggregate(100*prop.videos.vues, by=list(Category=as.factor(Assignment.bin)), FUN=mean))
a=with(effec.1, aggregate(100*prop.videos.vues/2, by=list(Category=as.factor(Assignment.bin)), FUN=sd))
write.table(a, "clipboard", sep="\t", row.names=T)


vect.int=NULL
for (n in seq(0,1,by=0.05)) {vect.int=c(vect.int,length(which((effec.1$Assignment.bin==1)&(effec.1$prop.videos.vues>n))))} # Code permettant de mesurer l'�chantillonnage chez les utilisateurs

#vect.int=NULL
#for (n in seq(0,1,by=0.05)) {vect.int=c(vect.int,length(which((effec.1$Assignment.bin==0)&(effec.1$prop.videos.vues>n))))}

plot(seq(0,1,by=0.05),vect.int)
mean(vect.int)/max(vect.int) # Indicateur d'�chantillonage moyen 69,4%

eff1.sk.vid=vect.int