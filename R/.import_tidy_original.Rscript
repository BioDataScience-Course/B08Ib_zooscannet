# Importation des données ZooscanNet et réduction du tableau

# Nécessaire pour les tests (exécutez avant toute chose)
if (!"tools:tests" %in% search())
  source(here::here("tests/tools_tests.R"), attach(NULL, name = "tools:tests"))

# Remarque : lorsque vous voyez du code comme "; ROMD5('taxa')" à la fin
# d'une instruction R "normale", il s'agit de code pour sauvegarder des
# résultats intermédiaires qui sont utilisés pour les tests. N'Y TOUCHEZ PAS
# et exécutez la ligne en entier dans R.

# Configuration de l'environnement
SciViews::R(___, lang = "fr")


# Étape 1 : importation des données ---------------------------------------

# Création du dossier data et du sous-dossier data_cache
fs::dir_create("data/data_cache/")

# Importation des données et ajout dans le cache
taxa <- ___(___,
  cache_file = "data/data_cache/taxa.csv.xz"); ROMD5('taxa')
# Nettoyage d'attributs inutiles
attr(taxa, "spec") <- NULL
attr(taxa, "problems") <- NULL
attr(taxa, "comment") <- NULL

features <- ___(___,
  cache_file = "data/data_cache/features_native.csv.xz"); ROMD5('features')
# Nettoyage d'attributs inutiles
attr(features, "spec") <- NULL
attr(features, "problems") <- NULL
attr(features, "comment") <- NULL

# Étape 2 : réduction des données ------------------------------------------
# Remarque : Utilisez les fonctions speedy dès que possible.

# Sélection des trois groupes d'intérêt dans `taxa`
sel_taxa <- c(___)
taxa_sub <- ___; ROMD5('taxa_sub')
table(taxa_sub$taxon)

# Combinaison de `taxa_sub` et `features` en ne conservant que les observations
# de `taxa_sub`
join_sub <- ___; ROMD5('join_sub')

# Réduction du nombre de lignes et de colonnes dans `join_sub`
# Ne conserver que les colonnes area, circ., elongation, perimmajor,
# median, skew, kurt, range, taxon
# et les 200 premières lignes de chaque groupe
join_sub %>.%
  sselect(., ___) %>.%
  slice_head(., n = 200, by = taxon) ->
  zsn_sub; ROMD5('zsn_sub')
# Vérification
names(zsn_sub)
table(zsn_sub$taxon)

# Sauvegarde en RDS des données réduites
write$___(___, "data/zsn_sub.rds")

# Nettoyage de l'environnement
# Note : normalement, les données en cache ne sont pas supprimées (c'est le
# rôle du cache d'éviter de les recharger plus tard). Mais comme la machine
# SaturnCloud utilisée n'a que de 2Go de disque, nous les effaçons maintenant
# avec CC() pour éviter de saturer l'espace disque.
rm(features, join_sub, taxa, taxa_sub, sel_taxa, zsn_sub); CC()

