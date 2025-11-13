#' Trouver l'élu le plus âgé
#'
#' @description
#' Cette fonction identifie l'élu le plus âgé dans un data.frame,
#' en calculant l'âge à partir de la date de naissance.
#'
#' @param df Un data.frame contenant une colonne `Date de naissance` au format `"jour/mois/année"`,
#' ainsi que les colonnes `Nom de l'élu` et `Prénom de l'élu`.
#'
#' @return Un data.frame avec les colonnes :
#' - `Nom de l'élu` : Nom de l'élu le plus âgé.
#' - `Prénom de l'élu` : Prénom de l'élu le plus âgé.
#' - `Date de naissance` : Date de naissance de l'élu le plus âgé.
#' - `âge` : Âge en années de l'élu le plus âgé.
#'
#' @importFrom dplyr mutate slice select
#' @importFrom lubridate dmy interval time_length
#'
#' @keywords internal


trouver_l_elu_le_plus_age <- function(df, ref_date = Sys.Date()) {
  valider_schema(df)

  df |>
    mutate(`Date de naissance` = dmy(`Date de naissance`)) |>
    mutate(
      âge = floor(
        lubridate::time_length(
          lubridate::interval(`Date de naissance`, as.Date(ref_date)),
          "years"
        )
      )
    ) |>
    slice(which.max(`âge`)) |>
    select(
      `Nom de l'élu`,
      `Prénom de l'élu`,
      `Date de naissance`,
      `âge`
    )
}
