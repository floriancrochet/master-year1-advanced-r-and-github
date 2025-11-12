test_that("calcul_distribution_age renvoie la distribution des âges correcte (déterministe)", {
  # Données : Nantes
  df_Nantes_identique <- df_gers_loire_atlantique |>
    dplyr::filter(`Libellé de la commune` == "Nantes")
  
  # Date de référence figée pour la reproductibilité
  ref_date <- as.Date("2024-01-01")
  
  # Calcul attendu (même logique que la fonction, via lubridate)
  dates_naiss <- lubridate::dmy(df_Nantes_identique$`Date de naissance`)
  ages_attendus <- floor(
    lubridate::time_length(
      lubridate::interval(dates_naiss, ref_date),
      "years"
    )
  )
  
  stats_attendues <- floor(
    unname(
      stats::quantile(
        ages_attendus, 
        probs = c(0, 0.25, 0.5, 0.75, 1),
        type = 7,
        names = FALSE
      )
    )
  )
  
  distribution_attendue <- tibble::tibble(
    Nom = "Nantes",
    Min = stats_attendues[1],
    Q1 = stats_attendues[2],
    Médiane = stats_attendues[3],
    Moyenne = floor(mean(ages_attendus)),
    Q3 = stats_attendues[4],
    Max = stats_attendues[5]
  )
  
  # Vérification stricte
  expect_identical(
    calcul_distribution_age(df_Nantes_identique, ref_date = ref_date),
    distribution_attendue
  )
})
