Analyse du plancton avec le ZooScan.
================

<!-- DO NOT EDIT README.md -->

# Introduction

Le ZooScanNet est une série d’informations collectées sur des organismes
planctoniques échantillonnés dans de nombreux océans dans le monde. Ces
échantillons ont été scannés à l’aide du ZooScan. Les images obtenues
sont découpées afin d’extraire des particules d’intérêt. On dénombre
1443278 images labélisées en 93 groupes (Elineau et al. 2018).

# Objectifs

Ce projet est individuel et cadré. Il doit vous permettre de démontrer
les compétences suivantes :

-   être capable de traiter des jeux de données volumineux.
-   être capable de sélectionner et filtrer les observations afin d’en
    extraire des données utiles et raisonnables à la réalisation d’une
    analyse factorielle multiple.

# Consignes

Parmi les 93 groupes, vous allez vous intéresser à 3 groupes
particuliers, les
[Calanidae](https://econum.github.io/zooimage_mesozooplankton_guide2/copepoda.html),
les
[nauplies](https://econum.github.io/zooimage_mesozooplankton_guide2/crustacea.html#sec-nauplii)
et les
[chétognathes](https://econum.github.io/zooimage_mesozooplankton_guide2/chaetognatha.html)
afin de discriminer ces groupes d’organismes. Des images provenant du
ZooScanNet de ces trois groupes sont disponibles dans le dossier
`figures/` .

De nombreuses variables sont mesurées ou calculées dans le fichier
`features_native.csv.xz` (et encore d'autres dans `features_skimage.csv.xz` mais nous ne les
utiliserons pas ici). Chaque variable est brièvement décrite dans Elineau
et al. (2018) . Deux groupes de variables sont employés pour cette
étude. Le premier groupe va rassembler des variables morphologiques
(*area*, *circ.*, *symetrieh*, *perimferet*, *perimmajor*) et le second
groupe comprend des variables associées au niveau de gris (*median*,
*skew*, *kurt*, *range*).

Débutez votre travail par compléter le fichier `R/import_tidy.R`. Ce
fichier va vous permettre de réduire les observations aux trois groupes
étudiés ainsi qu’aux variables d’intérêts. Les tableaux de données sont
téléchargeables ci-dessous :

-   lien vers les données de taxonomie :
    <https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/ZooScanNet/taxa.csv.xz>
-   lien vers les mesures associées aux particules :
    <https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/ZooScanNet/features_native.csv.xz>

Réalisez une analyse factorielle multiple afin de discriminer les trois
groupes. Utilisez deux groupes de variables relatives à la biométrie et
au niveau de gris. Complétez le fichier `docs/plankton_notes.Rmd`.

N’oubliez pas de “knitter” le document en HTML à la fin pour vérifier
que tout fonctionne bien, et corrigez les erreurs éventuelles
rencontrées à ce stade avant de clôturer votre travail. Vérifiez
également que votre dernier commit a bien été pushé sur GitHub avant la
deadline.

Ce projet correspond au template:
<https://github.com/BioDataScience-Course/B08Ia_zooscannet>

# Bibliographie

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-elineau2018" class="csl-entry">

Elineau, Amanda, Corinne Desnos, Laetitia Jalabert, Marion Olivier,
Jean-Baptiste Romagnan, Manoela Costa Brandao, Fabien Lombard, et al.
2018. « ZooScanNet: plankton images captured with the ZooScan ».
<https://doi.org/10.17882/55741>.

</div>

</div>
