# Réduction des observations
# Date :
# Auteur :
################################################################################
################################################################################
# Package
SciViews::R

# Importation des données depuis une URL ----
## Création du dossier data/ et du dossier data_raw/
fs::dir_create("data/data_raw/")
## Importation des données et ajout dans le cache.
taxa <- read$csv("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/ZooScanNet/taxa.csv.xz",
  cache_file = "data/data_raw/taxa.csv.xz")
features <- read$csv("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/ZooScanNet/features_native.csv.xz",
  cache_file = "data/data_raw/features_native.csv.xz")

# Sélection des 3 groupes d'intérêt dans `taxa` ----
taxa_red <- c("nauplii__Crustacea", "Calanidae", "Chaetognatha")
## Notes : Le choix des groupes a été réalisé pour vous.
taxa_sub <- ___
table(taxa_sub$taxon)

# Réduction du nombre de lignes et de colonnes dans `features` ----
## Combinaison et réduction des observations à 3 groupes d'intérêts
features_red <- ___

## Réduction des observations : 200 individus par groupe
___ <- ___

## Réduction des variables : 10 variables d'intérêts
## vars : area, circ., symetrieh, perimferet, perimmajor, median, skew, kurt, range, taxon
## Notes : Le choix des variables a été réalisé pour vous.
___ <- ___

# Sauvegarde en csv des données réduites -----
write$___(___, "data/zsn_sub.csv")
