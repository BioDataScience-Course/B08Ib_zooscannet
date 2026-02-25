# Importation des données ZooscanNet et réduction du tableau

# Nécessaire pour les tests (exécutez avant toute chose)
if (!"tools:tests" %in% search())
  source(here::here("tests/tools_tests.R"), attach(NULL, name = "tools:tests"))

# Remarque : lorsque vous voyez du code comme "; RODFS('taxa')" à la fin
# d'une instruction R "normale", il s'agit de code pour sauvegarder des
# résultats intermédiaires qui sont utilisés pour les tests. N'Y TOUCHEZ PAS
# et exécutez la ligne en entier dans R.

# Configuration de l'environnement
SciViews::R("___", lang = "fr")


# Étape 1 : importation des données ---------------------------------------

# Création du dossier data et du sous-dossier data_cache
fs::dir_create("data/data_cache/")

# Importation des données et ajout dans le cache avec read$csv_alt()
taxa <- read$___("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/ZooScanNet/taxa.csv.xz",
  cache_file = "data/data_cache/taxa.csv.xz"); RODFS('taxa')
# Nettoyage d'attributs inutiles
attr(taxa, "comment") <- NULL

features <- ___("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/ZooScanNet/features_native.csv.xz",
  cache_file = "data/data_cache/features_native.csv.xz"); RODFS('features')
# Nettoyage d'attributs inutiles
attr(features, "comment") <- NULL

# Note : `read$csv_alt()` est similaire `read$csv()`. Les deux alternatives permettent de lire des fichiers csv. En interne, il ne s'agit pas de la même fonction employée en interne `read$csv()` utilise `data.table::fread()` alors que `read$csv_alt()` utilise `readr::read_csv()`. L'instruction `data.io::data_types()` vous permet de connaitre tous les formats que la fonction `read()` est capable de lire.

# Étape 2 : réduction des données ------------------------------------------
# Remarque : Utilisez les fonctions speedy dès que possible.

# Sélection des trois groupes d'intérêt dans `taxa` (voir README)
sel_taxa <- c(___)
taxa_sub <- ____(taxa, ___); RODFS('taxa_sub')
table(taxa_sub$___)

# Combinaison de `taxa_sub` et `features` en ne conservant que les observations
# de `taxa_sub`
join_sub <- ___(___, ___); RODFS('join_sub')

# Réduction du nombre de lignes et de colonnes dans `join_sub`
# Ne conserver que les colonnes area, circ., elongation, perimmajor,
# median, skew, kurt, range, taxon
# et les 200 premières lignes de chaque groupe avec la fonction `slice_head()`
join_sub %>.%
  ___(___) %>.%
  ___(___) ->
  zsn_sub; RODFS('zsn_sub')
# Vérification
names(zsn_sub)
table(zsn_sub$taxon)

# Conversion en data.trame et sauvegarde en RDS des données réduites
zsn_sub <- as_dtx(zsn_sub, keep.key = FALSE)
write$rds(zsn_sub, "data/zsn_sub.rds")

# Nettoyage de l'environnement
# Note : normalement, les données en cache ne sont pas supprimées (c'est le
# rôle du cache d'éviter de les recharger plus tard). Mais comme la machine
# SaturnCloud utilisée n'a que de 2Go de disque, nous les effaçons maintenant
# avec CC() pour éviter de saturer l'espace disque.
rm(features, join_sub, taxa, taxa_sub, sel_taxa, zsn_sub); CC()
