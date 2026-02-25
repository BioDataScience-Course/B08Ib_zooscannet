# Analyse de plancton avec le ZooScan

R est capable de traiter des jeux de données de plus grande taille que des outils comme Microsoft Excel (par exemple, des tableaux de plusieurs millions de lignes). Vous allez vous confronter à des données sur le plancton plus volumineuses que ce que vous avez traité jusqu'ici. **Des précautions particulières seront nécessaires pour traiter correctement ces données dans un projet GitHub.**

Vous devez avoir assimilé l’ensemble des notions du module 8 du cours de science des données biologiques 2. Ce projet correspond au template <https://github.com/BioDataScience-Course/B08Ib_zooscannet>. Il est distribué sous licence [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).

## Objectifs

Ce projet est individuel et cadré. Il doit vous permettre de démontrer les compétences suivantes :

-   Être capable de traiter des jeux de données volumineux impossibles à manipuler avec un tableur comme Excel
-   Maîtriser la sélection et le filtrage des observations pour réduire la taille du tableau
-   Réaliser une analyse factorielle multiple sur ce dernier tableau

## Consignes

Vous allez traiter un gros jeu de données relatif à la numérisation de plancton avec un appareil nommé ZooScan. Parmi les 93 groupes du jeu de données initial qui compte presque 1,5 million d'entrées, vous allez vous intéresser à trois d’entre eux en particulier : les [nauplies](https://econum.github.io/zooimage_mesozooplankton_guide2/crustacea.html#sec-nauplii), les [Calanidae](https://econum.github.io/zooimage_mesozooplankton_guide2/copepoda.html) et les [chétognathes](https://econum.github.io/zooimage_mesozooplankton_guide2/chaetognatha.html). Des exemples d'images de ces trois groupes provenant de ZooScanNet sont disponibles dans le dossier `figures` pour vous faire une idée. Les noms des groupes à sélectionner sont similaires aux noms des sous-dossiers du dossier `figures/`. Il s'agit de `"nauplii__Crustacea"`, `"Calanidae"` et `"Chaetognatha"`.

De nombreuses variables sont mesurées ou calculées dans le fichier `features.csv.xz`. Chaque variable est brièvement décrite dans Elineau et al. (2018). Deux séries de variables sont employées pour cette étude. La première série va rassembler des variables de **morphométrie** (taille ou forme avec les *area*, *circ.*, *elongation* et *perimmajor*) et la seconde série reprend des variables relatives à la **transparence** (mesure des niveaux de gris tels *median*, *skew*, *kurt*, *range*).

Commencez votre travail en complétant le fichier `R/import_tidy.R` et en l'exécutant. Ce script R va vous permettre de réduire les observations aux trois groupes étudiés ainsi qu’aux variables d’intérêt. Les jeux de données complets sont téléchargeables à partir des liens repris ci-dessous :

-   Données de taxonomie : <https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/ZooScanNet/taxa.csv.xz>
-   Mesures des particules : <https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/ZooScanNet/features_native.csv.xz>

Ensuite, vous réaliserez une analyse factorielle multiple dans `plankton_notebook.qmd` pour voir comment se distribuent les trois groupes taxonomiques ciblés. Utilisez les deux séries de variables **morphométrie** et **transparence** tel qu’expliqué plus haut.

N’oubliez pas de compiler la version finale HTML du document avec le bouton "Rendu". Cela doit se faire sans erreur (très important, sans quoi nous ne pouvons pas donner des points pour ce projet !). Vous avez également une batterie de tests à votre disposition à partir de l’onglet "Construire" -\> bouton "Construire tout". Vérifiez également que votre dernier commit a bien été pushé sur GitHub avant la deadline.

## Utilisation de l’IA

Dans le cadre de votre travail, vous pouvez utiliser l’intelligence artificielle. Il est toutefois impératif de préciser, dans la section « Matériel et méthodes » du projet, que l’IA a été utilisée, en indiquant le contexte et la manière dont elle a été employée. Voici un exemple de formulation :

```
La relecture (orthographe et syntaxe) a été réalisée à l’aide de Microsoft Copilot (basé sur GPT-5), consulté le 12 janvier 2026.
```
Attention, vous devez néanmoins employer le dialecte SciViews-R afin de garantir votre compréhension du cours de Science des données biologiques 2 lors de la production de code R dans votre projet.

Un chatbot SciViews est également disponible dans RStudio (Saturn Cloud), via l’addin Help. Il répond aux questions relatives au langage R, aux statistiques et à la science des données.

## Bibliographie

Elineau, A, C Desnos, L Jalabert, M Olivier, J-B Romagnan, M Costa Brandao, F Lombard, et al. 2018. « ZooScanNet: plankton images captured with the ZooScan ». <https://doi.org/10.17882/55741>.
