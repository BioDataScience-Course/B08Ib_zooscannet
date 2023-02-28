Analyse du plancton avec le ZooScan.
================

<!-- DO NOT EDIT README.md -->

# Introduction

Le ZooScanNet est une série d’informations collectées sur des organismes
planctoniques échantillonnés dans de nombreux océans dans le monde. Ces
échantillons ont été scannée à l’aide du ZooScan. Les images obtenues
sont découpé afin d’extraire des particules d’intérêt. On dénombre
1443278 images labelisée en 93 groupes (Elineau et al. 2018).

# Objectifs

Ce projet est individuel et cadré. Il doit vous permettre de démontrer
les compétences suivantes :

-   être capable de traiter des jeux de données volumineux.
-   être capable de sélectionner et filtrer les observations afin d’en
    extraire des données utiles et raisonnable à la réalisation d’une
    analyse factorielle multiple.

# Consignes

Parmi les 93 groupes, vous allez vous intéresser à 3 groupes
particuliers les
[Calanidae](https://econum.github.io/zooimage_mesozooplankton_guide2/copepoda.html),
les
[nauplies](https://econum.github.io/zooimage_mesozooplankton_guide2/crustacea.html#sec-nauplii)
et les
[chaetognathes](https://econum.github.io/zooimage_mesozooplankton_guide2/chaetognatha.html)
afin de discriminer trois groupes d’organismes. Des images provenant du
ZooScanNet de ces trois groupes sont disponibles dans le dossier
`figures/` .

De nombreuses variables sont mesurée ou calculées dans le fichier
`features.csv.xz`. Chaque variable est brièvement décrite dans Elineau
et al. (2018) . Deux groupes de variables sont employées pour cette
étude. Le premier groupe va rassembler des variables morphologiques
(*area*, *circ.*, *symetrieh*, *perimferet*, *perimmajor*) et le second
groupe comprend des variables associé aux niveaux de gris (*median*,
*skew*, *kurt*, *range*).

Débutez votre travail par compléter le fichier `R/import_tidy.R`. Ce
fichier va vous permettre de réduire les observations aux trois groupes
étudiés ainsi qu’aux variables d’intérêts.

Réalisez une analyse factorielle multiple afin de discriminer les trois
groupes. Utilisez deux groupes de variables relatives à la biométrie et
aux niveaux de gris. Complétez le fichiers `docs/plankton_notes.Rmd`.

N’oubliez pas de “knitter” le document en HTML à la fin pour vérifier
que tout fonctionne bien, et corrigez les erreurs éventuelles
rencontrées à ce stade avant de clôturer votre travail. Vérifiez
également que votre dernier commit a bien été pushé sur GitHub avant la
deadline.

Ce projet corresponds au template:
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
