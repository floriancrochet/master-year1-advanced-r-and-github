# Ce fichier déclare à R CMD check que certains noms
# utilisés dans dplyr/ggplot sont des colonnes ou variables dérivées,
# pas des objets globaux mal définis.

utils::globalVariables(c(
  # --- Colonnes de la base de référence ---
  "Code du département",
  "Libellé du département",
  "Code de la collectivité à statut particulier",
  "Libellé de la collectivité à statut particulier",
  "Code de la commune",
  "Libellé de la commune",
  "Nom de l'élu",
  "Prénom de l'élu",
  "Code sexe",
  "Date de naissance",
  "Code de la catégorie socio-professionnelle",
  "Libellé de la catégorie socio-professionnelle",
  "Date de début du mandat",
  "Libellé de la fonction",
  "Date de début de la fonction",
  "Code nationalité",
  
  # --- Variables dérivées courantes dans le package ---
  "âge",          # colonne d'âge calculée
  "Moyenne",      # stats de distribution
  "Médiane",
  "Q1", "Q3",
  "n"             # compte d'observations (dplyr::count)
))
