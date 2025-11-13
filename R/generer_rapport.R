#' Générer un rapport Quarto et le déplacer vers un chemin spécifié
#'
#' @description
#' Cette fonction génère un rapport Quarto en utilisant les paramètres `commune` et `departement` spécifiés.
#' Après la génération, le fichier est déplacé vers le chemin de destination spécifié par l'utilisateur.
#'
#' @param commune Une chaîne de caractères représentant le numéro de la commune à inclure dans le rapport.
#' @param departement Une chaîne de caractères représentant le numéro du département à inclure dans le rapport.
#' @param output Une chaîne de caractères représentant le chemin de destination où le fichier rapport doit être déplacé.
#' Le fichier généré sera déplacé vers ce chemin sous le nom de spécifié.
#' @param df Un data.frame contenant des informations sur les élus,
#'
#' @return Aucun retour. Le fichier rapport.html est généré et déplacé vers le chemin spécifié.
#'
#' @import quarto
#' @importFrom utils packageName
#' @importFrom tools file_ext
#'
#' @examples
#' # Exemples d'utilisation
#'
#'
#' # Données
#'
#' data("df_gers_loire_atlantique")
#'
#'
#' # Utilisation de la fonction
#'
#' ## Générer un rapport pour Nantes (44109) et la Loire-Atlantique (44) en html
#' 
#' tmp <- tempfile(fileext = ".html")
#' generer_rapport("44109", "44", tmp, df_gers_loire_atlantique)
#'
#' ## Générer un rapport pour Nantes (44109) et la Loire-Atlantique (44) en pdf
#' 
#' tmp <- tempfile(fileext = ".pdf")
#' generer_rapport("44109", "44", tmp, df_gers_loire_atlantique)
#'
#' @export


generer_rapport <- function(commune, departement, output, df) {
  # 1) Vérifier la présence du package 'quarto'
  if (!requireNamespace("quarto", quietly = TRUE)) {
    stop(
      "Le package 'quarto' doit être installé pour utiliser generer_rapport().\n",
      "Installe-le avec install.packages('quarto').",
      call. = FALSE
    )
  }
  
  # 2) Vérifier la disponibilité du logiciel Quarto (la CLI)
  if (!quarto::quarto_available()) {
    stop(
      "Le logiciel 'Quarto' n'a pas été détecté sur cette machine.\n",
      "Vérifie que Quarto est installé et que quarto::quarto_path() fonctionne.",
      call. = FALSE
    )
  }
  
  # 3) Vérifier les arguments
  stopifnot(
    is.character(commune),    length(commune)    == 1L,
    is.character(departement), length(departement) == 1L,
    is.character(output),     length(output)     == 1L
  )
  
  valider_schema(df)
  
  # 4) Localiser le fichier .qmd dans le package
  pkg <- utils::packageName()
  qmd_path <- system.file("rapport.qmd", package = pkg)
  if (identical(qmd_path, "")) {
    stop(
      "Le fichier 'rapport.qmd' est introuvable dans le package.\n",
      "Vérifie qu'il est bien placé dans le dossier inst/ du package.",
      call. = FALSE
    )
  }
  
  # 5) Gérer le chemin de sortie
  # Si seul un nom de fichier est donné, on l’écrit dans le répertoire de travail courant
  if (dirname(output) %in% c(".", "")) {
    output <- normalizePath(
      file.path(getwd(), output),
      winslash = "/",
      mustWork = FALSE
    )
  }
  
  # Normaliser le chemin : absolu + "/"
  output <- normalizePath(output, winslash = "/", mustWork = FALSE)
  
  # Vérifier que le chemin est absolu (Linux/Mac, Windows, UNC)
  if (!grepl("^(?:/|[A-Za-z]:/|//)", output)) {
    stop(
      "Le chemin doit être absolu (par exemple '/home/...', 'C:/...', ou '//serveur/...').",
      call. = FALSE
    )
  }
  
  # Déterminer le chemin du dossier et le nom du fichier
  out_dir  <- dirname(output)
  out_file <- basename(output)
  
  # Vérifier que le dossier de sortie existe déjà
  if (!dir.exists(out_dir)) {
    stop(
      paste0(
        "Le dossier de sortie n'existe pas : ", out_dir,
        "\n(getwd() = ", getwd(), ")"
      ),
      call. = FALSE
    )
  }
  
  # 6) Déterminer le format de sortie à partir de l’extension
  ext           <- tolower(tools::file_ext(output))
  valid_formats <- c("html", "pdf")
  out_format    <- if (ext %in% valid_formats) ext else NULL
  
  # 7) Sauvegarder df dans un fichier temporaire (et le nettoyer ensuite)
  df_name <- deparse(substitute(df))
  df_path <- file.path(tempdir(), paste0("temp_", df_name, ".rds"))
  saveRDS(df, df_path)
  on.exit({
    if (file.exists(df_path)) unlink(df_path)
  }, add = TRUE)
  
  # 8) Exécuter le rendu du document Quarto avec les paramètres
  quarto::quarto_render(
    input         = qmd_path,
    output_file   = out_file,
    output_format = out_format,
    execute_params = list(
      code_commune     = commune,
      code_departement = departement,
      data.frame_name  = df_name,
      data.frame_path  = df_path
    ),
    quarto_args = c("--output-dir", out_dir)
  )
  
  message(sprintf("Le rapport a été généré et enregistré dans : %s", output))
  invisible(NULL)
}
