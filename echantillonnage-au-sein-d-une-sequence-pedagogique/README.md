# Echantillonnage au sein d’une séquence pédagogique

## Cas d’utilisation

### Orientés concepteurs

#### Identification des ressources peu utilisées, en réingénierie

Afin d’alléger un dispositif de formation, un concepteur souhaite supprimer d’une itération sur l’autre les ressources qui ne sont pas utilisées par la plupart des utilisateurs. Il lui faut identifier les ressources les moins utilisées. On cherche à établir un score pour chaque ressource.

![Exemple de visualisation](http://www.piloter.org/excel/images/h10.jpg)

#### Identification des utilisateurs peu assidus

On cherche à identifier pour une formation donnée les participants qui ont validé les acquis sans pour autant avoir visionné les ressources exigées. Plusieurs applications possibles : pénaliser les participants qui sautent trop de ressources, les relancer de manière personnalisée pour leur préciser quelles ressources ils doivent revoir. 

![Exemple de visualisation](http://www.piloter.org/excel/images/h10.jpg)

### Orientés chercheurs

#### Typologie des comportements d’échantillonnage

Création d’une typologie des utilisateurs sur la base de leur comportement d’échantillonnage : nature et nombre de ressources sautées. On peut orienter l’analyse sur la catégorisation des utilisateurs, on pourra s’intéressera à la distinction entre différents cas : celui où l’utilisateur réalise la quasi-totalité des activités prescrites et n’ignore que quelques-unes d’entre elles ; celui où l’utilisateur ne réalise qu’une minorité des activités prescrites. On pourra identifier le premier pattern comme « skipping », et le second comme « cherry-picking ». On pourra définir les utilisateurs comme skippers ou cherry-pickers sur la base de ces patterns. On peut chercher à identifier selon une typologie d’utilisateurs identifiée (skipper, cherry-picker par exemple) les scores d’échantillonnage de telle ou telle ressource.

![Exemple de visualisation](http://www.piloter.org/excel/images/h10.jpg)

## Inputs
### Flat

id | user_id | viewed_date | ...
---|-------- | ----------- | ---
identifiant unique de la trace (int | identifiant unique d'un utilisateur (int) | la date de visualisation (ISO8601)
1 | 123456 | '2016-01-01' 

### xApi
* event name 1
* event name 2
* event name 3
* ...

## Outputs
### user_video_mat
Matrice binaire 1/0. Tableau avec en ligne les utilisateurs, en colonne les ressources de la sequence_of_interest, prenant la valeur 1 quand une activité a été évitée par un utilisateur

### activity_skipping_score
Identification des activités les plus fréquemment évitées par les utilisateurs, avec un rang et un score pour chaque ressource.

### user_skipping_score
Calculer un score pour chaque utilisateur en fonction de sa propension à sauter une ressource

## Indicateurs recommandés
### Proportion des utilisateurs évitant plus de 50% des ressources prescrites
[Lorem Ipsum](#)

![Exemple de visualisation](http://www.piloter.org/excel/images/h10.jpg)


### Proportion des actions attendues (on attend d’un utilisateur qu’il réalise l’ensemble des activités de la séquence) ayant été effectivement réalisées
[Lorem Ipsum](#)

![Exemple de visualisation](http://www.piloter.org/excel/images/h10.jpg)

## Examples
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut ex gravida, varius lorem at, mattis mi. Vestibulum eget consequat tellus. In luctus sodales neque sit amet sagittis. Integer ullamcorper ipsum lectus, et pharetra tortor malesuada a. Aenean tincidunt quam enim. Proin vel diam ex. Sed vitae aliquam nisl. Suspendisse egestas orci non neque dignissim, id tristique metus ultrices. Nunc at est lacinia, vestibulum mauris sagittis, hendrerit purus.
[Lorem ipsum](#)

## Publications
* [Lorem ipsum](#)
* [Lorem ipsum](#)
* [Lorem ipsum](#)
