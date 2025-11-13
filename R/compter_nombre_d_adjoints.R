#' Compter le nombre d'adjoints
#'
#' @description
#' Cette fonction compte le nombre d'occurrences du mot "adjoint"
#' dans la colonne `Libellé de la fonction` d'un data.frame.
#'
#' @param df Un data.frame contenant une colonne `Libellé de la fonction` (type `character`).
#'
#' @return Un entier représentant le nombre d'occurrences du mot "adjoint".
#'
#' @importFrom stringr str_detect
#'
#' @keywords internal


compter_nombre_d_adjoints <- function(df) {
  valider_schema(df)

  sum(str_detect(df$`Libellé de la fonction`, "adjoint"), na.rm = TRUE)
}
