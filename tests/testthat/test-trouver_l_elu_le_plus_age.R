# Date de référence
ref_date <- as.Date("2024-01-01")



test_that("trouver_l_elu_le_plus_age renvoie une erreur pour un schéma incorrect", {
  df_Nantes_invalide <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes") |>
    dplyr::select(-`Date de naissance`)  # Retrait de la colonne utilisée par la fonction

  expect_error(trouver_l_elu_le_plus_age(df_Nantes_invalide, ref_date = ref_date))
})



test_that("trouver_l_elu_le_plus_age fonctionne avec un schéma valide", {
  df_Nantes_valide <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes")

  expect_silent(trouver_l_elu_le_plus_age(df_Nantes_valide, ref_date = ref_date))  # Vérifie qu'il n'y a pas d'erreur
})



test_that("trouver_l_elu_le_plus_age renvoie l'élu le plus âgé", {
  # Utilisation du jeu de données df_Nantes_identique
  df_Nantes_identique <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes")

  # Résultat attendu : un tibble avec l'élu le plus âgé
  elu_espere <- tibble::tibble(
    `Nom de l'élu` = "PROCHASSON",
    `Prénom de l'élu` = "François",
    `Date de naissance` = as.Date("1952-02-28")
  ) |>
    dplyr::mutate(
      âge = floor(
        lubridate::time_length(
          lubridate::interval(`Date de naissance`, ref_date),
          "years"
        )
      )
    )

  resultat <- tibble::as_tibble(trouver_l_elu_le_plus_age(df_Nantes_identique, ref_date = ref_date))
  
  # Supprimer les attributs 'spec' et 'problems' du résultat
  attr(resultat, "spec") <- NULL
  attr(resultat, "problems") <- NULL

  # Vérification que le résultat de trouver_l_elu_le_plus_age correspond à l'elu_espere
  expect_identical(resultat, elu_espere)
})
