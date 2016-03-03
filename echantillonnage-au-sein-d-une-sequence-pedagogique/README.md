# Echantillonnage au sein d’une séquence pédagogique

## Cas d’utilisation

### Orientés concepteurs

#### Identification des ressources peu utilisées, en réingénierie

Afin d’alléger un dispositif de formation, un concepteur souhaite supprimer d’une itération sur l’autre les ressources qui ne sont pas utilisées par la plupart des utilisateurs. Il lui faut identifier les ressources les moins utilisées. On cherche à établir un score pour chaque ressource.

#### Identification des utilisateurs peu assidus

On cherche à identifier pour une formation donnée les participants qui ont validé les acquis sans pour autant avoir visionné les ressources exigées. Plusieurs applications possibles : pénaliser les participants qui sautent trop de ressources, les relancer de manière personnalisée pour leur préciser quelles ressources ils doivent revoir. 


### Orientés chercheurs

#### Typologie des comportements d’échantillonnage

Création d’une typologie des utilisateurs sur la base de leur comportement d’échantillonnage : nature et nombre de ressources sautées. On peut orienter l’analyse sur la catégorisation des utilisateurs, on pourra s’intéressera à la distinction entre différents cas : celui où l’utilisateur réalise la quasi-totalité des activités prescrites et n’ignore que quelques-unes d’entre elles ; celui où l’utilisateur ne réalise qu’une minorité des activités prescrites. On pourra identifier le premier pattern comme « skipping », et le second comme « cherry-picking ». On pourra définir les utilisateurs comme skippers ou cherry-pickers sur la base de ces patterns. On peut chercher à identifier selon une typologie d’utilisateurs identifiée (skipper, cherry-picker par exemple) les scores d’échantillonnage de telle ou telle ressource.

## Inputs
### Flat

id | user_id | viewed_date
---|-------- | -----------
identifiant unique de la trace | identifiant unique d'un utilisateur | la date de visualisation
1 | 123456 | '2016-01-01' 

### xApi

## Outputs

## Indicateurs recommandés

## Exemple
