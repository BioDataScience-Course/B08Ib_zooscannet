# Vérification de R/import_tidy.R

test_that("Étape 1 : importation des données", {
  expect_true(is_identical_to_ref("taxa"))
  # Le jeu de données téléchargé `taxa` n'est pas conforme à la référence
  # Assurez-vous que le téléchargement s'est fait correctement.
  # Éventuellement, effacer le fichier data/data_cache/taxa.csv.xz et relancez
  # le script d'importation depuis le début.

  expect_true(is_identical_to_ref("features"))
  # Le jeu de données téléchargé `features` n'est pas conforme à la référence
  # Assurez-vous que le téléchargement s'est fait correctement.
  # Éventuellement, effacer le fichier data/data_cache/features.csv.xz et
  # réexécutez la ligne de code qui le charge.
})

test_that("Étape 2 : réduction des données", {
  expect_true(is_identical_to_ref("taxa_sub"))
  # La sélection des trois groupes "nauplii__Crustacea", "Calanidae" et
  # "Chaetognatha" dans `taxa_sub`ne s'est pas faite correctement. Vérifiez-
  # votre code et relancez-le.

  expect_true(is_identical_to_ref("join_sub"))
  # La jointure de `taxa_sub` et `features` ne donne pas le tableau attendu
  # Vous devez conserver uniquement les individus de `taxa_sub` en fonction de
  # la colonne commune `objid`.
})

test_that("Jeu de données final à l'issue de l'importation", {
  expect_true(is_data_df("zsn_sub"))
  # Le jeu de données `zsn_sub` ne correspond à ce que vous devez obtenir
  # Avez-vous sélectionné les bonnes colonnes du tableau (9 au final) ?
  # Avez-vous récupéré les 200 premiers items des trois groupes (600 lignes au
  # final) ?
})
