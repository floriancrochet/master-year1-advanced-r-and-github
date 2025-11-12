test_that("valider_schema lève une erreur si des colonnes obligatoires manquent", {
  # Retire une colonne obligatoire
  df_manquant <- dplyr::select(df_gers_loire_atlantique, -`Code du département`)
  
  expect_error(
    valider_schema(df_manquant),
    regexp = "Colonnes manquantes"
  )
})

test_that("valider_schema accepte un schéma correct (aucune sortie)", {
  # Schéma complet : pas d'erreur, pas de warning, pas de message
  expect_silent(valider_schema(df_gers_loire_atlantique))
})

test_that("valider_schema lève une erreur si l'entrée n'est pas un data.frame", {
  vec <- c(1, 2, 3)
  expect_error(
    valider_schema(vec),
    regexp = "n'est pas un data.frame"
  )
})

test_that("valider_schema lève une erreur si le data.frame est vide de colonnes", {
  # data.frame() sans colonnes : toutes les colonnes obligatoires manquent
  df_vide <- data.frame()
  expect_error(
    valider_schema(df_vide),
    regexp = "Colonnes manquantes"
  )
})
