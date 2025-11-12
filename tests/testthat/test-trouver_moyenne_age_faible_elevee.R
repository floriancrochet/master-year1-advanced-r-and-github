test_that("trouver_moyenne_age_faible_elevee renvoie une erreur pour un schéma incorrect", {
  df_Nantes_invalide <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes") |>
    dplyr::select(-`Date de naissance`)

  expect_error(trouver_moyenne_age_faible_elevee(df_Nantes_invalide))
})

test_that("trouver_moyenne_age_faible_elevee fonctionne avec un schéma valide", {
  df_Nantes_valide <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes")

  expect_silent(trouver_moyenne_age_faible_elevee(df_Nantes_valide))
})



test_that("trouver_moyenne_age_faible_elevee renvoie les bonnes statistiques de la moyenne d'âge", {
  # On sélectionne deux communes pour tester le cas où il y a plusieurs groupes
  df_test <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` %in% c("Nantes", "Saint-Herblain"))
  
  # On fixe une date pour des résultats reproductibles
  ref_date <- as.Date("2024-01-01")
  
  # On calcule la distribution d'âge pour chacune des deux communes
  res_all <- dplyr::bind_rows(
    calcul_distribution_age(dplyr::filter(df_test, `Libellé de la commune` == "Nantes"), ref_date = ref_date),
    calcul_distribution_age(dplyr::filter(df_test, `Libellé de la commune` == "Saint-Herblain"), ref_date = ref_date)
  )
  
  # On construit l'attendu : la commune avec la moyenne la plus faible et la plus élevée
  distribution_esperes <- res_all |>
    dplyr::arrange(Moyenne) |>
    dplyr::slice(c(1, dplyr::n()))
  
  # Vérifie que la fonction renvoie bien ces deux communes dans le bon ordre
  expect_identical(
    trouver_moyenne_age_faible_elevee(df_test, ref_date = ref_date),
    distribution_esperes
  )
})
