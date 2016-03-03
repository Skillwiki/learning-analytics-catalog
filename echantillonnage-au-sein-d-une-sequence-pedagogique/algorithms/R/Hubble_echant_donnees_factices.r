#Equivalent de prescribed_sequence_of_interest
seq.videos=seq(1:10) #10 vid�os successives ordonn�es selon leur place dans la s�quence p�dagogique
list.users=seq(1:20) # Donn�es de 20 utilisateurs dont on s'int�resse au comportement d'�chantillonage
n.users=length(list.users) # Nombre d'utilisateurs
n.videos=length(seq.videos) #Nombre de vid�os

# G�n�ration de traces factices
l.analytics.mat=as.data.frame(matrix(0, n.users*n.videos, 3 ))
names(l.analytics.mat)=c("user.id", "video.id", "viewed")
# Cr�ons toutes les combinaisons uniques vid�os / utilisateurs
l.analytics.mat[,c("user.id","video.id")]=expand.grid(list.users,seq.videos)

# Cr�ation d'un jeu factice de traces d'apprentissage. Le nombre de traces d'apprentissage est N.log
l.analytics.int=l.analytics.mat # Cr�ation d'une entit� interm�diaire, pr�alable � la cr�ation des traces
N.log=130
lines.viewed=sample(1:(n.users*n.videos), N.log) #S�lection al�atoire des utilisateurs ayant vu une vid�o
l.analytics.int[lines.viewed,3]=1
log.data=l.analytics.int[which(l.analytics.int["viewed"]==1), c(1,2)]  #On �limine du jeu de donn�es les combinaisons ne donnant pas lieu � une trace pour cr�er un jeu de donn�es d'apparence r�elle
# Pour construire les indicateurs, on peuple une matrice pr�construite � partir des traces r�elles
for (i in 1: N.log) {
user.id.i= log.data[i,1]
video.id.i=log.data[i,2]
l.analytics.mat[which((l.analytics.mat$user.id==user.id.i)&(l.analytics.mat$video.id==video.id.i)),3]=1
  }
# Proportion des vid�os vues par rapport au nombre maximal de vid�os vues possibles
mean(l.analytics.mat$viewed) # INDICATEUR RECOMMANDE
user.viewing.score=rep(NA, n.users)
# Cr�ation du vecteur attribuant pour chaque utilisateur un score correspondant � la proportion des vid�os qu'il a vues
for (i in 1:n.users) {user.viewing.score[i]= mean(l.analytics.mat[which(l.analytics.mat$user.id==i),]$viewed)}
# Cr�ation du vecteur attribuant pour chaque video un score correspondant � la proportion des utilisateurs qui l'ont vue
video.viewing.score=rep(NA, n.videos)
for (i in 1:n.videos) {video.viewing.score[i]= mean(l.analytics.mat[which(l.analytics.mat$video.id==i),]$viewed)}
# Proportion des utilisateurs ayant "saut�" la ressource N de la s�quence
activity.skipping.score=1-video.viewing.score
plot(seq.videos, activity.skipping.score , ylab="Score d'�chantillonage", xlab="Num�ro de la vid�o sur la s�quence p�dagogique")

# Echantillonnage des utilisateurs � l'�chelle du dispositif
int=NULL
for (i in 1: n.videos) {
  N1=length(which(user.viewing.score>i/n.videos)) # Nombre d'utilisateurs qui ont vu plus de i/n.videos*100 % des vid�os
  int=c(int,N1/n.users) } # Corriger par le nombre d'utilisateurs

plot(100*seq(1:n.videos)/n.videos,100*int, type="l", ylab="Proportions des utilisateurs visualisant plus de R%  des vid�os du dispositif", xlab="R") # Plot qui permet de visualiser � l'�chelle des utilisateurs du MOOC.

# Cr�ation de la matrice utilisateur x ressources, permettant de savoir qui a visionn� quoi
user.video.mat=matrix(NA, n.users, n.videos)
for (i in 1:n.users) {
  for (j in 1:n.videos) {
    user.video.mat[i,j]=   l.analytics.mat[which((l.analytics.mat["user.id"]==i)& (l.analytics.mat["video.id"]==j)),3]
  }
}
user.video.mat=as.data.frame( user.video.mat)
