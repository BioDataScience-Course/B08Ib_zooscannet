# Vérification de R/import_tidy.R

test_that("Étape 1 : importation des données", {
  expect_true(is_identical_to_ref("taxa", "names"))
  # Les colonnes dans le tableau `taxa` importé ne sont pas celles attendues
  # Votre jeu de données de départ n'est pas correct. Vérifiez et réexécutez-le
  # script R/import_tidy.R pour corriger le problème.

  expect_true(is_identical_to_ref("taxa", "classes"))
  # La nature des variables (classe) dans le tableau `taxa` est incorrecte
  # Vérifiez l'importation et la manipulation des données dans le script
  # R/import_tidy.R et réexécutez-le pour corriger le problème.

  expect_true(is_identical_to_ref("taxa", "nrow"))
  # Le nombre de lignes dans le tableau `taxa` est incorrect
  # Vérifiez l'importation des données dans le script R/import_tidy.R et
  # réexécutez-le pour corriger le problème.
  #
  expect_true(is_identical_to_ref("taxa", "ncol"))
  # Le nombre de colonnes dans le tableau `taxa` est incorrect
  # Vérifiez l'importation des données dans le script R/import_tidy.R et
  # réexécutez-le pour corriger le problème.

  expect_true(is_identical_to_ref("features", "names"))
  # Les colonnes dans le tableau `features` importé ne sont pas celles attendues
  # Votre jeu de données de départ n'est pas correct. Vérifiez et réexécutez-le
  # script R/import_tidy.R pour corriger le problème.

  expect_true(is_identical_to_ref("features", "classes"))
  # La nature des variables (classe) dans le tableau `features` est incorrecte
  # Vérifiez l'importation et la manipulation des données dans le script
  # R/import_tidy.R et réexécutez-le pour corriger le problème.

  expect_true(is_identical_to_ref("features", "nrow"))
  # Le nombre de lignes dans le tableau `features` est incorrect
  # Vérifiez l'importation des données dans le script R/import_tidy.R et
  # réexécutez-le pour corriger le problème.
  #
  expect_true(is_identical_to_ref("features", "ncol"))
  # Le nombre de colonnes dans le tableau `features` est incorrect
  # Vérifiez l'importation des données dans le script R/import_tidy.R et
  # réexécutez-le pour corriger le problème.
})

test_that("Étape 2 : réduction des données", {
  expect_true(is_identical_to_ref("taxa_sub", "names"))
  # Les colonnes dans le tableau `taxa_sub` importé ne sont pas celles attendues
  # Votre jeu de données de départ n'est pas correct. Vérifiez et réexécutez-le
  # script R/import_tidy.R pour corriger le problème.

  expect_true(is_identical_to_ref("taxa_sub", "classes"))
  # La nature des variables (classe) dans le tableau `taxa_sub` est incorrecte
  # Vérifiez l'importation et la manipulation des données dans le script
  # R/import_tidy.R et réexécutez-le pour corriger le problème.

  expect_true(is_identical_to_ref("taxa_sub", "nrow"))
  # Le nombre de lignes dans le tableau `taxa_sub` est incorrect.
  # La sélection des trois groupes "nauplii__Crustacea", "Calanidae" et
  # "Chaetognatha" dans `taxa_sub`ne s'est pas faite correctement.
  # Vérifiez l'importation des données dans le script R/import_tidy.R et
  # réexécutez-le pour corriger le problème.
  #
  expect_true(is_identical_to_ref("taxa_sub", "ncol"))
  # Le nombre de colonnes dans le tableau `taxa_sub est incorrect
  # Vérifiez l'importation des données dans le script R/import_tidy.R et
  # réexécutez-le pour corriger le problème.

  expect_true(is_identical_to_ref("join_sub", "names"))
  # Les colonnes dans le tableau `join_sub` importé ne sont pas celles attendues
  # Votre jeu de données de départ n'est pas correct. Vérifiez et réexécutez-le
  # script R/import_tidy.R pour corriger le problème.

  expect_true(is_identical_to_ref("join_sub", "classes"))
  # La nature des variables (classe) dans le tableau `join_sub` est incorrecte
  # Vérifiez l'importation et la manipulation des données dans le script
  # R/import_tidy.R et réexécutez-le pour corriger le problème.

  expect_true(is_identical_to_ref("join_sub", "nrow"))
  # La jointure de `taxa_sub` et `features` ne donne pas le tableau attendu
  # Vous devez conserver uniquement les individus de `taxa_sub` en fonction de
  # la colonne commune `objid`.
  # Le nombre de lignes dans le tableau `join_sub` est incorrect
  # Vérifiez l'importation des données dans le script R/import_tidy.R et
  # réexécutez-le pour corriger le problème.
  #
  expect_true(is_identical_to_ref("join_sub", "ncol"))
  # Le nombre de colonnes dans le tableau `join_sub` est incorrect
  # Vérifiez l'importation des données dans le script R/import_tidy.R et
  # réexécutez-le pour corriger le problème.
})

test_that("Jeu de données final à l'issue de l'importation", {
  expect_true(is_identical_to_ref("zsn_sub", "names"))
  # Les colonnes dans le tableau `zsn_sub` importé ne sont pas celles attendues
  # Votre jeu de données de départ n'est pas correct. Vérifiez et réexécutez-le
  # script R/import_tidy.R pour corriger le problème.

  expect_true(is_identical_to_ref("zsn_sub", "classes"))
  # La nature des variables (classe) dans le tableau `zsn_sub` est incorrecte
  # Vérifiez l'importation et la manipulation des données dans le script
  # R/import_tidy.R et réexécutez-le pour corriger le problème.

  expect_true(is_identical_to_ref("zsn_sub", "nrow"))
  # Le nombre de lignes dans le tableau `zsn_sub` est incorrect
  # Avez-vous récupéré les 200 premiers items des trois groupes (600 lignes au
  # final) ?
  # Vérifiez l'importation des données dans le script R/import_tidy.R et
  # réexécutez-le pour corriger le problème.
  #
  expect_true(is_identical_to_ref("zsn_sub", "ncol"))
  # Le nombre de colonnes dans le tableau `zsn_sub` est incorrect
  # Avez-vous sélectionné les bonnes colonnes du tableau (9 au final) ?
  # Vérifiez l'importation des données dans le script R/import_tidy.R et
  # réexécutez-le pour corriger le problème.
})
