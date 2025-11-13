#' Visualiser la répartition des élus par catégorie socio-professionnelle
#'
#' @description
#' Cette fonction génère un graphique en barres représentant la répartition
#' des élus selon leur catégorie socio-professionnelle.
#'
#' @param df Un data.frame contenant une colonne `Code de la catégorie socio-professionnelle`.
#'
#' @return Un objet ggplot affichant un diagramme en barres de la distribution des élus
#' par catégorie socio-professionnelle.
#'
#' @importFrom dplyr count
#' @importFrom ggplot2 ggplot aes geom_bar labs theme_bw
#'
#' @keywords internal


plot_code_professions <- function(df) {
  valider_schema(df)

  df |>
    count(`Code de la catégorie socio-professionnelle`) |>
    ggplot() +
    aes(
      x = `Code de la catégorie socio-professionnelle`,
      y = n
    ) +
    geom_bar(stat = "identity") +
    labs(
      x = "Catégorie socio-professionnelle",
      y = "Nombre d'élus",
      title = "Répartition des élus par catégorie socio-professionnelle"
    ) +
    theme_bw()
}
