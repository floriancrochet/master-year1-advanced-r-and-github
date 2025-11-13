#' Calculer la distribution des âges
#'
#' @description
#' Cette fonction calcule la distribution des âges des individus d'un data.frame
#' en renvoyant des statistiques descriptives : minimum, quartiles, médiane, moyenne et maximum.
#'
#' @param df Un data.frame contenant une colonne `Date de naissance` et
#' une colonne `Libellé de la commune` ou `Libellé du département`.
#'
#' @param ... Paramètres supplémentaires (non utilisés directement dans cette fonction).
#'
#' @return Un tibble contenant le nom de la commune ou du département, ainsi que
#' les statistiques d'âge : minimum, premier quartile (Q1), médiane, moyenne,
#' troisième quartile (Q3) et maximum.
#'
#' @importFrom lubridate dmy interval time_length
#' @importFrom stats quantile
#' @importFrom tibble tibble
#'
#' @keywords internal


calcul_distribution_age <- function(df, ref_date = Sys.Date(), ...) {
  valider_schema(df)
  
  # Nom de la commune ou du département
  nom <- if (length(unique(df$`Libellé de la commune`)) == 1)
    unique(df$`Libellé de la commune`)
  else
    unique(df$`Libellé du département`)
  
  # Normaliser la date de référence
  ref_date <- as.Date(ref_date)
  
  # Calcul de l'âge (méthode lubridate)
  dates_naiss <- lubridate::dmy(df$`Date de naissance`)
  ages <- floor(
    lubridate::time_length(
      lubridate::interval(dates_naiss, ref_date),
      "years"
    )
  )
  
  stats <- floor(
    unname(
      quantile(
        ages, 
        probs = c(0, 0.25, 0.5, 0.75, 1),
        type = 7,
        names = FALSE
      )
    )
  )
  
  # Retourner un tibble
  tibble::tibble(
    Nom = nom,
    Min = stats[1],
    Q1 = stats[2],
    Médiane = stats[3],
    Moyenne = floor(mean(ages)),
    Q3 = stats[4],
    Max = stats[5]
  )
}
