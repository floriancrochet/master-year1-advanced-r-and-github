# Date de référence
ref_date <- as.Date("2024-01-01")



test_that("trouver_elu_le_plus_age_jeune renvoie une erreur pour un schéma incorrect", {
  df_Nantes_invalide <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes") |>
    dplyr::select(-`Date de naissance`)

  expect_error(trouver_elu_le_plus_age_jeune(df_Nantes_invalide, ref_date = ref_date))
})



test_that("trouver_elu_le_plus_age_jeune fonctionne avec un schéma valide", {
  df_Nantes_valide <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes")

  expect_silent(trouver_elu_le_plus_age_jeune(df_Nantes_valide, ref_date = ref_date))
})



test_that("trouver_elu_le_plus_age_jeune renvoie l'élu le plus jeune et le plus âgé", {
  # Utilisation du jeu de données df_Nantes_identique
  df_Nantes_identique <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes")

  # Résultat attendu : une tibble avec les élus les plus jeunes et les plus âgés
  elus_esperes <- tibble::tibble(
    `Nom de l'élu` = c("PROCHASSON", "BOURDON"),
    `Prénom de l'élu` = c("François", "Emilie"),
    `Date de naissance` = as.Date(c("1952-02-28", "1996-12-22")),
    `Libellé de la commune` = rep("Nantes", 2)
  ) |>
    dplyr::mutate(
      âge = floor(
        lubridate::time_length(
          lubridate::interval(`Date de naissance`, ref_date),
          "years"
        )
      )
    )

  resultat <- tibble::as_tibble(trouver_elu_le_plus_age_jeune(df_Nantes_identique, ref_date = ref_date))
  
  # Supprimer les attributs 'spec' et 'problems' du résultat
  attr(resultat, "spec") <- NULL
  attr(resultat, "problems") <- NULL

  # Vérification que le résultat de trouver_elu_le_plus_age_jeune correspond à elu_esperes
  expect_identical(resultat, elus_esperes)
})
