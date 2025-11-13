test_that("generer_rapport() renvoie une erreur claire si Quarto est indisponible", {
  qp <- tryCatch(quarto::quarto_path(), error = function(e) "")
  
  if (identical(qp, "")) {
    out_dir  <- withr::local_tempdir()
    out_file <- file.path(normalizePath(out_dir, winslash = "/", mustWork = TRUE),
                          "rapport_erreur.html")
    
    expect_error(
      generer_rapport("44150", "44", out_file, df_gers_loire_atlantique),
      "Le logiciel Quarto n'a pas été détecté"
    )
  } else {
    succeed("Quarto est disponible : le scénario d'erreur ne s'applique pas.")
  }
})



test_that("generer_rapport() s'exécute et crée le fichier attendu", {
  # Chemin absolu temporaire pour la sortie (et nettoyage auto du dossier)
  out_dir  <- withr::local_tempdir()
  out_file <- file.path(normalizePath(out_dir, winslash = "/", mustWork = TRUE),
                        "rapport_final.html")
  
  # Exécution en capturant toute sortie console + sans messages/avertissements
  expect_no_error(
    suppressWarnings(
      suppressMessages(
        invisible(capture.output(
          generer_rapport(
            commune     = "44150",
            departement = "44",
            output      = out_file,
            df          = df_gers_loire_atlantique
          )
        ))
      )
    )
  )
  
  expect_true(file.exists(out_file))
})
