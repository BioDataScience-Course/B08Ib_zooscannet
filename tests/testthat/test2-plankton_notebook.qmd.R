# Vérifications de plankton_notebook.qmd
plankton <- parse_rmd("../../plankton_notebook.qmd",
  allow_incomplete = TRUE, parse_yaml = TRUE)

test_that("Le bloc-notes plankton_notebook est-il compilé en un fichier final HTML ?", {
  expect_true(is_rendered("plankton_notebook.qmd"))
  # La version compilée HTML du carnet de notes plankton_notebook est introuvable
  # Vous devez créer un rendu de votre bloc-notes Quarto (bouton 'Rendu')
  # Vérifiez aussi que ce rendu se réalise sans erreur, sinon, lisez le message
  # qui s'affiche dans l'onglet 'Travaux' et corrigez ce qui ne va pas dans
  # votre document avant de réaliser à nouveau un rendu HTML.
  # IL EST TRES IMPORTANT QUE VOTRE DOCUMENT COMPILE ! C'est tout de même le but
  # de votre analyse que d'obtenir le document final HTML.

  expect_true(is_rendered_current("plankton_notebook.qmd"))
  # La version compilée HTML du document Quarto existe, mais elle est ancienne
  # Vous avez modifié le document Quarto après avoir réalisé le rendu.
  # La version finale HTML n'est sans doute pas à jour. Recompilez la dernière
  # version de votre bloc-notes en cliquant sur le bouton 'Rendu' et vérifiez
  # que la conversion se fait sans erreur. Sinon, corrigez et regénérez le HTML.
})

test_that("La structure du document plankton_notebook est-elle conservée ?", {
  expect_true(all(c("Introduction et but", "Matériel et méthodes",
    "Résultats", "Description des données", "Ordination",
    "Discussion et conclusions", "Référence")
    %in% (rmd_node_sections(plankton) |> unlist() |> unique())))
  # Les sections (titres) attendues du bloc-notes plankton_notebook ne sont pas
  # toutes présentes
  # Ce test échoue si vous avez modifié la structure du document, un ou
  # plusieurs titres indispensables par rapport aux exercices ont disparu ou ont
  # été modifié. Vérifiez la structure du document par rapport à la version
  # d'origine dans le dépôt "template" du document (lien au début du fichier
  # README.md).

  expect_true(all(c("setup", "import", "corrplot", "desccomment", "mfa",
    "screemfa", "screemfacomment", "loadingsmfa", "loadingsmfacomment",
    "acpsmfa", "bygroupsmfa", "bygroupsmfacomment", "indmfa", "indmfacomment")
    %in% rmd_node_label(plankton)))
  # Un ou plusieurs labels de chunks nécessaires à l'évaluation manquent dans
  # plankton_notebook.qmd
  # Ce test échoue si vous avez modifié la structure du document, un ou
  # plusieurs chunks indispensables par rapport aux exercices sont introuvables.
  # Vérifiez la structure du document par rapport à la version d'origine dans
  # le dépôt "template" du document (lien au début du fichier README.md).

  expect_true(any(duplicated(rmd_node_label(plankton))))
  # Un ou plusieurs labels de chunks sont dupliqués dans plankton_notebook.qmd
  # Les labels de chunks doivent absolument être uniques. Vous ne pouvez pas
  # avoir deux chunks qui portent le même label. Vérifiez et modifiez le label
  # dupliqué pour respecter cette règle. Comme les chunks et leurs labels sont
  # imposés dans ce document cadré, cette situation ne devrait pas se produire.
  # Vous avez peut-être involontairement dupliqué une partie du document ?
})

test_that("L'entête YAML a-t-il été complété dans plankton_ca ?", {
  expect_true(plankton[[1]]$author != "___")
  expect_true(!grepl("__", plankton[[1]]$author))
  expect_true(grepl("^[^_]....+", plankton[[1]]$author))
  # Le nom d'auteur n'est pas complété ou de manière incorrecte dans l'entête
  # Vous devez indiquer votre nom dans l'entête YAML à la place de "___" et
  # éliminer les caractères '_' par la même occasion.

  expect_true(grepl("[a-z]", plankton[[1]]$author))
  # Aucune lettre minuscule n'est trouvée dans le nom d'auteur
  # Avez-vous bien complété le champ 'author' dans l'entête YAML ?
  # Vous ne pouvez pas écrire votre nom tout en majuscules. Utilisez une
  # majuscule en début de nom et de prénom, et des minuscules ensuite.

  expect_true(grepl("[A-Z]", plankton[[1]]$author))
  # Aucune lettre majuscule n'est trouvée dans le nom d'auteur
  # Avez-vous bien complété le champ 'author' dans l'entête YAML ?
  # Vous ne pouvez pas écrire votre nom tout en minuscules. Utilisez une
  # majuscule en début de nom et de prénom, et des minuscules ensuite.
})

test_that("Chunks 'import' : importation et skim de `plancton` depuis `zsn_sub.rds`", {
  expect_true(is_identical_to_ref("import", "names"))
  # Les colonnes dans le tableau `plancton` importé ne sont pas celles attendues
  # Votre jeu de données de départ n'est pas correct. Ce test échoue si vous
  # n'avez pas bien rempli le code du chunk 'import' ou si le tableau réduit
  # obtenu avec le script R/import_tidy.R est incorrect.

  expect_true(is_identical_to_ref("import", "classes"))
  # La nature des variables (classe) dans le tableau `plancton` est incorrecte
  # Vérifiez le chunk d'importation des données `import` ainsi que les tests
  # relatifs à l'importation et réduction du jeu de données dans
  # R/import_tidy.R.

  expect_true(is_identical_to_ref("import", "nrow"))
  # Le nombre de lignes dans le tableau `plancton` est incorrect
  # Vous devez avoir 600 lignes pour 9 colonnes dans `plancton`. Vérifiez, si
  # nécessaire, votre script d'importation et réduction des données
  # R/import_tidy.R et assurez-vous de bien importer les données réduites à
  # partir de `zsn_sub.rds` dans le dossier `data`
})

test_that("Chunks 'corrplot', 'desccomment' : description des données", {
  expect_true(is_identical_to_ref("corrplot"))
  # Le graphique produit par le chunk 'corrplot' n'est pas celui attendu.
  # Avez-vous utilisé correlation() pour créer l'objet `plancton_corr` ?
  # Avez-vous réalisé son graphique avec `plot()` ?

  expect_true(is_identical_to_ref("desccomment"))
  # L'interprétation des tableaux descriptifs des données et du graphique sont
  # (partiellement) fausses dans le chunk 'desccomment'
  # Vous devez cochez les phrases qui décrivent les données d'un 'x' entre les
  # crochets [] -> [x]. Ensuite, vous devez recompiler la version
  # HTML du bloc-notes (bouton 'Rendu') sans erreur pour réactualiser les
  # résultats.
  # Assurez-vous de bien comprendre ce qui est coché ou pas : vous n'aurez plus
  # cette aide plus tard dans le travail de groupe ou les interrogations !
})

test_that("Chunks 'mfa', 'screemfa', 'screemfacomment' : AFM, graphique des éboulis et commentaires", {
  expect_true(is_equal_to_ref("mfa"))
  # L'objet `plankton_mfa` n'est pas créé ou il est incorrect.
  # Avez vous employé une formule adaptée pour spécifier votre AFM ? Vérifiez le
  # code dans ce chunk 'mfa' par rapport à la consigne.
  # Assurez-vous de bien assigner le résultat à la variable `plankton_mfa`.
  # Vérifiez que vous en imprimé le résulé avec `summary()`.

  expect_true(is_identical_to_ref("screemfa"))
  # Le graphique produit par le chunk 'screemfa' n'est pas celui attendu.
  # Vous devez réaliser le graphique des éboulis de l'AFM en utilisant une
  # variante de chart()

  expect_true(is_identical_to_ref("screemfacomment"))
  # L'interprétation de l'AFM et du graphique des éboulis est (partiellement)
  # fausse dans le chunk 'screemfacomment'
  # Vous devez cochez les phrases qui décrivent les graphiques et la table d'un
  # 'x' entre les crochets [] -> [x]. Ensuite, vous devez recompiler la version
  # HTML du bloc-notes (bouton 'Rendu') sans erreur pour réactualiser les
  # résultats.
  # Assurez-vous de bien comprendre ce qui est coché ou pas : vous n'aurez plus
  # cette aide plus tard dans le travail de groupe ou les interrogations !
})

test_that("Chunks 'loadingsmfa', 'loadingsmfacomment' : graphique des variables de l'AFM et interprétation", {
  expect_true(is_identical_to_ref("loadingsmfa"))
  # Le graphique des variables de votre AFM n'est pas celui attendu.
  # Assurez-vous de bien utiliser `plancton_mfa` et de choisir le bon type de
  # graphique

  expect_true(is_identical_to_ref("loadingsmfacomment"))
  # L'interprétation du graphique des variables de l'AFM est (partiellement)
  # fausse dans le chunk 'loadingsmfacomment'
  # Vous devez cochez les phrases qui décrivent les graphiques et la table d'un
  # 'x' entre les crochets [] -> [x]. Ensuite, vous devez recompiler la version
  # HTML du bloc-notes (bouton 'Rendu') sans erreur pour réactualiser les
  # résultats.
  # Assurez-vous de bien comprendre ce qui est coché ou pas : vous n'aurez plus
  # cette aide plus tard dans le travail de groupe ou les interrogations !
})

test_that("Chunks 'acpsmfa', 'bygroupsmfa', 'bygroupsmfacomment' : graphique des axes et des groupes de l'AFM et commentaires", {
  expect_true(is_identical_to_ref("acpsmfa"))
  # Le graphique des axes de votre AFM n'est pas celui attendu.
  # Assurez-vous de bien utiliser `plancton_mfa` et de réaliser le bon type de
  # graphique.

  expect_true(is_identical_to_ref("bygroupsmfa"))
  # Le graphique des groupes de votre AFM n'est pas celui attendu.
  # Assurez-vous de bien utiliser `plancton_mfa` et de réaliser le bon type de
  # graphique.

  expect_true(is_identical_to_ref("bygroupsmfacomment"))
  # L'interprétation des graphiques des axes et des groupes  de l'AFM est
  # (partiellement) fausse dans le chunk 'bygroupsmfacomment'.
  # Vous devez cochez les phrases qui décrivent les graphiques et la table d'un
  # 'x' entre les crochets [] -> [x]. Ensuite, vous devez recompiler la version
  # HTML du bloc-notes (bouton 'Rendu') sans erreur pour réactualiser les
  # résultats.
  # Assurez-vous de bien comprendre ce qui est coché ou pas : vous n'aurez plus
  # cette aide plus tard dans le travail de groupe ou les interrogations !
})

test_that("Chunks 'indmfa', 'indmfacomment' : graphique des individus de l'AFM et interprétation", {
  expect_true(is_identical_to_ref("indmfa"))
  # Le graphique des individus de l'AFM n'est pas fait ou n'est pas celui
  # attendu dans le chunk 'indmfa'.
  # Assurez-vous de bien utiliser `plancton_mfa`et de réaliser le bon type de
  # graphique.

  expect_true(is_identical_to_ref("indmfacomment"))
  # L'interprétation du graphique des individus de l'AFM est (partiellement)
  # fausse dans le chunk 'indmfacomment'
  # Vous devez cochez les phrases qui décrivent le graphique d'un 'x' entre
  # les crochets [] -> [x]. Ensuite, vous devez recompiler la version HTML du
  # bloc-notes (bouton 'Rendu') sans erreur pour réactualiser les résultats.
  # Assurez-vous de bien comprendre ce qui est coché ou pas : vous n'aurez plus
  # cette aide plus tard dans le travail de groupe ou les interrogations !
})

test_that("La partie discussion et conclusion est-elle remplie ?", {
  expect_true(!(rmd_select(plankton, by_section("Discussion et conclusions")) |>
      as_document() |> grepl("...Votre discussion ici...", x = _,
        fixed = TRUE) |> any()))
  # La discussion et les conclusions ne sont pas faites
  # Remplacez "...Votre discussion ici..." par vos phrases de commentaires
  # libres (à noter que le contenu de cette section n'est pas évalué
  # automatiquement, mais il le sera par vos enseignants).
})
