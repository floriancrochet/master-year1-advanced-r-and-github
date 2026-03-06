# French Demographic Analysis - R Package

*This R package provides tools for structural demographic and geographic
analysis.*

[Package Documentation
(Online)](https://floriancrochet.github.io/master-year1-advanced-r-and-github)

------------------------------------------------------------------------

## 🎯 Overview

This project provides tools for demographic and geographic data analysis
of French communes and departments.

**Objectives** - Construct custom classes for communes and departments -
Automate demographic and statistical reporting via Quarto - Generate
visualizations using ggplot2 - Ensure reproducible and documented
workflows

------------------------------------------------------------------------

## 🗄️ Data

- **Data Availability:** Packaged dataset provided in `data/`

------------------------------------------------------------------------

## ⚙️ Features

- **Create Custom Classes:** Represent communes and departments via S3
  structured objects
- **Summarize Statistical Metrics:** Compute demographic metrics at
  regional levels
- **Visualize Population Data:** Display commune and department data
  graphically
- **Automate Quarto Reporting:** Generate interactive analytical reports
- **Publish Package Documentation:** Deploy reference materials using
  pkgdown
- **Integrate Rmd Vignettes:** Support instructional demonstrations
  directly within Quarto

------------------------------------------------------------------------

## 🧰 Tech Stack

- **Language:** R (\>= 4.1.0)
- **Numerical Computing & Data Manipulation:** dplyr, tibble, stringr,
  lubridate, purrr
- **Data Visualization:** ggplot2, cowplot
- **Code Quality & Testing:** devtools, usethis, testthat
- **Reporting & Documentation:** Quarto, pkgdown, roxygen2, knitr,
  rmarkdown

------------------------------------------------------------------------

## 📦 Installation

``` r
install.packages("devtools")
devtools::install_github("floriancrochet/master-year1-advanced-r-and-github")
```

------------------------------------------------------------------------

## 💻 Usage Example

### Reproducing the Analysis / Execution Pipeline

*(Expected runtime: ~20 seconds on AMD Ryzen 7)*

``` r
library(firstlibflorian)

data("df_gers_loire_atlantique")
generer_rapport("44109", "44", "path/to/output.html", df_gers_loire_atlantique)
```

------------------------------------------------------------------------

## 📂 Project Structure

``` text
firstlibflorian/
│
├── .github/
├── R/
│   ├── calcul_distribution_age.R             # Demographic distribution computation
│   ├── compter_nombre_d_adjoints.R           # Demographic aggregation counting
│   ├── compter_nombre_d_elus.R               # Demographic aggregation counting
│   ├── creer_commune.R                       # S3 object constructor
│   ├── creer_departement.R                   # S3 object constructor
│   ├── data.R                                # Base schema definition
│   ├── generer_rapport.R                     # Quarto report orchestrator
│   ├── plot.commune.R                        # Custom S3 visualization method
│   ├── plot.departement.R                    # Custom S3 visualization method
│   ├── plot_code_professions.R               # Custom S3 visualization method
│   ├── summary.commune.R                     # Statistical summary method
│   ├── summary.departement.R                 # Statistical summary method
│   ├── trouver_elu_le_plus_age_jeune.R       # Demographic extrema identification
│   ├── trouver_l_elu_le_plus_age.R           # Demographic extrema identification
│   ├── trouver_moyenne_age_faible_elevee.R   # Demographic mean optimization
│   ├── valider_schema.R                      # S3 class validator
│   └── zzz.R                                 # Startup sequence
├── data/
│   └── df_gers_loire_atlantique.rda
├── inst/
│   └── rapport.qmd                           # Analytical report template
├── man/
├── pkgdown/
├── tests/
│   └── testthat/
│       └── testthat.R                        # testthat architecture
├── vignettes/
│   ├── description.qmd                       # Structural overview
│   ├── firstlibFlorian.qmd                   # Core tutorial
│   └── fonctions.qmd                         # API documentation
├── .Rbuildignore
├── .gitignore
├── DESCRIPTION
├── NAMESPACE
├── README.md
├── _pkgdown.yml
└── firstlibFlorian.Rproj
```

------------------------------------------------------------------------

## 📚 References

- Quarto documentation
- Tidyverse documentation

------------------------------------------------------------------------

## 📜 License

This project is released under the GPL-3 License.  
© 2024 Florian Crochet

------------------------------------------------------------------------

## 👤 Author

**Florian Crochet**  
[GitHub Profile](https://github.com/floriancrochet)

*Master 1 – Econometrics & Statistics, Applied Econometrics Track*

------------------------------------------------------------------------

## 🤝 Acknowledgments

This work was conducted as part of the Advanced R and Introduction to
Git course, supervised by Raphaël Nedellec.
