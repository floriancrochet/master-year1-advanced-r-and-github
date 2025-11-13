#' Trouver les communes avec la moyenne d'âge la plus faible et la plus élevée
#'
#' @description
#' Cette fonction permet de trouver les communes avec la moyenne d’âge des élus la plus faible
#' et la plus élevée. Elle regroupe les données par commune, applique une fonction de calcul
#' de la distribution des âges des élus à chaque groupe, puis sélectionne les communes avec
#' les moyennes d’âge les plus basses et les plus élevées.
#'
#' @param df Un data.frame contenant les informations sur les élus,
#' incluant les colonnes `Libellé de la commune` et les informations nécessaires
#' pour calculer la moyenne d’âge des élus par commune.
#'
#' @return Un tibble contenant les informations des communes avec la moyenne d’âge
#' la plus faible et la plus élevée. Les colonnes retournées incluent :
#' - `Libellé de la commune` : Le nom de la commune,
#' - `Moyenne` : La moyenne d’âge des élus dans la commune.
#'
#' @importFrom dplyr group_by group_split arrange slice bind_rows
#' @importFrom purrr map
#'
#' @keywords internal


trouver_moyenne_age_faible_elevee <- function(df, ref_date = Sys.Date()) {
  valider_schema(df)

  df |>
    group_by(`Libellé de la commune`) |>
    group_split() |>
    map(~ calcul_distribution_age(.x, ref_date = ref_date)) |>
    bind_rows() |>
    arrange(Moyenne) |>
    slice(c(1, n()))
}
