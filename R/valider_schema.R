#' Valider le schéma des données d'un data.frame
#'
#' @description
#' Cette fonction vérifie que les colonnes du data.frame sont conformes à un schéma prédéfini. Le schéma attendu inclut des colonnes spécifiques
#' liées aux informations sur les élus.
#'
#' @param df Un data.frame, contenant des informations sur les élus, qui doit avoir au minimum les colonnes suivantes :
#' `Code du département`, `Libellé du département`, `Code de la commune`, `Libellé de la commune`,
#' `Nom de l'élu`, `Prénom de l'élu`, `Date de naissance`, `Code de la catégorie socio-professionnelle`,
#' `Libellé de la fonction`.
#' 
#' @return Aucun retour explicite. Un message ou un avertissement est affiché si le schéma n’est pas respecté.
#'
#' @keywords internal


valider_schema <- function(df) { 
  # Type d'objet
  if (!is.data.frame(df)) {
    stop("L'objet fourni n'est pas un data.frame.", call. = FALSE)
  }
  
  # Colonnes minimales requises
  schema <- c(
    "Code du département",
    "Libellé du département",
    "Code de la commune",
    "Libellé de la commune",
    "Nom de l'élu",
    "Prénom de l'élu",
    "Date de naissance",
    "Code de la catégorie socio-professionnelle",
    "Libellé de la fonction"
  )
  
  # Colonnes manquantes
  missing_cols <- setdiff(schema, colnames(df))
  
  if (length(missing_cols) > 0) {
    stop(
      sprintf("Colonnes manquantes : %s", paste(missing_cols, collapse = ", ")),
      call. = FALSE
    )
  }
  
  invisible(df)
}
