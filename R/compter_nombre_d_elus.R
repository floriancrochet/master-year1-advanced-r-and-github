#' Compter le nombre d'élus
#'
#' @description
#' Cette fonction compte le nombre d'élus distincts dans un data.frame en se basant
#' sur les colonnes `Nom de l'élu`, `Prénom de l'élu`, et `Date de naissance`.
#'
#' @param df Un data.frame contenant les colonnes `Nom de l'élu`, `Prénom de l'élu`, et `Date de naissance` (type `character` pour les deux premières et `Date` pour la dernière).
#'
#' @return Un entier représentant le nombre d'élus distincts dans le data.frame.
#'
#' @importFrom dplyr select distinct
#'
#' @keywords internal


compter_nombre_d_elus <- function(df) {
  valider_schema(df)

  df |>
    select(`Nom de l'élu`, `Prénom de l'élu`, `Date de naissance`) |>
    distinct() |>
    nrow()
}
