test_that("plot.commune renvoie une erreur pour un schéma incorrect", {
  df_Nantes_invalide <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes") |>
    dplyr::select(-`Libellé de la commune`)  # Retrait de la colonne utilisée par la fonction

  df_Nantes_invalide <- structure(df_Nantes_invalide, class = c("commune", class(df_Nantes_invalide)))

  expect_error(plot.commune(df_Nantes_invalide))
})

test_that("plot.commune fonctionne avec un schéma valide", {
  df_Nantes_valide <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes")

  df_Nantes_valide <- structure(df_Nantes_valide, class = c("commune", class(df_Nantes_valide)))

  expect_silent(plot.commune(df_Nantes_valide))  # Vérifie qu'il n'y a pas d'erreur
})



test_that("plot.commune renvoie une erreur si le data.frame n'est pas de classe 'commune'", {
  df_Nantes_pas_commune <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes")  # Pas explicitement une classe 'commune'

  expect_error(plot.commune(df_Nantes_pas_commune))
})

test_that("plot.commune fonctionne avec un data.frame de classe 'commune'", {
  df_Nantes_commune <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes")

  df_Nantes_commune <- structure(df_Nantes_commune, class = c("commune", class(df_Nantes_commune)))

  expect_silent(plot.commune(df_Nantes_commune))  # Vérifie qu'il n'y a pas d'erreur
})



test_that("plot.commune fonctionne sans erreur et génère un graphique ggplot", {
  df_Nantes <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes")  # Sélection d'une seule commune

  df_Nantes <- structure(df_Nantes, class = c("commune", class(df_Nantes)))

  # Vérifier qu'il n'y a pas d'erreurs, d'avertissements ou de messages pendant l'exécution de la fonction
  expect_error(plot.commune(df_Nantes), NA)  # Aucune erreur ne doit être générée
  expect_warning(plot.commune(df_Nantes), NA)  # Aucun avertissement ne doit être généré
  expect_message(plot.commune(df_Nantes), NA)  # Aucun autre message ne doit être généré

  # Vérifier que plot.commune() retourne une liste structurée correctement
  resultat <- plot.commune(df_Nantes)
  
  # Vérifier que la fonction retourne bien une liste
  expect_type(resultat, "list")
  
  # Vérifier que la liste contient exactement les trois éléments attendus
  expect_named(resultat, c("graphique", "graphique_sans_legende", "legende"))
  
  # Vérifier que les deux premiers éléments sont des objets ggplot
  expect_s3_class(resultat$graphique, "ggplot")
  expect_s3_class(resultat$graphique_sans_legende, "ggplot")
  
  # Vérifier que le troisième élément (la légende) est un objet gg
  expect_s3_class(resultat$legende, "gg")

  # Vérifier qu'un graphique est effectivement généré sans message
  expect_silent(plot.commune(df_Nantes))  # Vérifier qu'aucun message n'est affiché lors du rendu du graphique
})
