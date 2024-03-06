# Analyse de plancton avec le ZooScan

## Avant-propos

Vous devez avoir assimilé l’ensemble des notions du module 8 du cours de science des données biologiques 2. Ce projet correspond au template <https://github.com/BioDataScience-Course/B08Ib_zooscannet>. Il est distribué sous licence [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).

## Objectifs

Ce projet est individuel et cadré. Il doit vous permettre de démontrer les compétences suivantes :

-   Être capable de traiter des jeux de données volumineux
-   Maîtriser la sélection et le filtrage des observations pour réduire la taille du tableau
-   Réaliser une analyse factorielle multiple sur ce dernier tableau

## Consignes

Vous allez traiter un gros jeu de données relatif à la numérisation de plnacton avec un appareil nommé ZoScan. Parmi les 93 groupes du jeu de données initial qui compte presque 1,5 millions d'entrées, vous allez vous intéresser à trois d’entre eux en particuliers : les [Calanidae](https://econum.github.io/zooimage_mesozooplankton_guide2/copepoda.html), les [nauplies](https://econum.github.io/zooimage_mesozooplankton_guide2/crustacea.html#sec-nauplii) et les [chétognathes](https://econum.github.io/zooimage_mesozooplankton_guide2/chaetognatha.html). Des images exemples de ces trois groupes provenant de ZooScanNet sont disponibles dans le dossier `figures` pour vous faire une idée.

De nombreuses variables sont mesurées ou calculées dans le fichier `features.csv.xz`. Chaque variable est brièvement décrite dans Elineau et al. (2018). Deux séries de variables sont employés pour cette étude. La première série va rassembler des variables de **morphométrie** (taille ou forme avec les *area*, *circ.*, *elongation* et *perimmajor*) et la seconde série reprend des variables relatives à la **transparence** (mesure des niveaux de gris tels *median*, *skew*, *kurt*, *range*).

Commencez votre travail en complétant le fichier `R/import_tidy.R` et en l'exécutant. Ce script R va vous permettre de réduire les observations aux trois groupes étudiés ainsi qu’aux variables d’intérêts. Les jeux de données complets sont téléchargeables à partir des liens repris ci-dessous :

- Données de taxonomie : <https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/ZooScanNet/taxa.csv.xz>
- Mesures des particules : <https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/ZooScanNet/features_native.csv.xz>

Ensuite, vous réaliserez une analyse factorielle multiple dans `plankton_notebook.qmd` pour voir comment se distribuent les trois groupes taxonomiques ciblés. Utilisez les deux séries de variables **morphométrie** et **transparence** tel qu’expliqué plus haut.

N’oubliez pas de compiler la version finale HTML du document avec le bouton "Rendu". Cela doit se faire sans erreur (très important !). Vous avez également une batterie de tests à votre disposition à partir de l’onglet "Construire" -\> bouton "Construire tout". Vérifiez également que votre dernier commit a bien été pushé sur GitHub avant la deadline.

## Bibliographie

Elineau, A, C Desnos, L Jalabert, M Olivier, J-B Romagnan, M Costa Brandao, F Lombard, et al. 2018. « ZooScanNet: plankton images captured with the ZooScan ». <https://doi.org/10.17882/55741>.
