# French Demographic Analysis - R Package

*This R package provides tools for structural demographic and geographic
analysis.*

[**Package Documentation
(Online)**](https://floriancrochet.github.io/master-year1-advanced-r-and-github)

------------------------------------------------------------------------

## 🎯 Overview

This project provides tools for demographic and geographic data analysis
of French communes and departments.  
This work was developed within the context of the Advanced R and
Introduction to Git coursework.

**Objectives** - Construct custom classes for communes and departments -
Automate demographic and statistical reporting via Quarto - Generate
clear visualizations using ggplot2 - Ensure reproducible and
professionally documented workflows

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
  seamlessly
- **Publish Package Documentation:** Deploy comprehensive reference
  materials using pkgdown
- **Integrate Rmd Vignettes:** Support instructional demonstrations
  directly within Quarto

------------------------------------------------------------------------

## 🧰 Tech Stack

- **Language:** R (\>= 4.1.0)
- **Data Manipulation:** dplyr, tibble, stringr, lubridate, purrr
- **Visualization:** ggplot2, cowplot
- **Deployment & MLOps:** Quarto, pkgdown, devtools, roxygen2, usethis,
  testthat, knitr, rmarkdown

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

Additional examples can be found in the `vignettes/` directory.

------------------------------------------------------------------------

## 📂 Project Structure

``` text
firstlibflorian/
│
├── data/                               # Packaged datasets
│   └── df_gers_loire_atlantique.rda
├── inst/                               # Quarto templates for report generation
├── man/                                # Documentation generated via roxygen2
├── R/                                  # Source code (constructors, S3 methods, utilities)
├── tests/                              # Unit tests using testthat
├── vignettes/                          # Quarto/Rmd vignettes
└── DESCRIPTION                         # Package metadata
```

------------------------------------------------------------------------

## 📚 References

- Course materials: R avancé et introduction à Git
- Tidyverse documentation
- Quarto documentation

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
Git module, supervised by Raphaël Nedellec.  
Special thanks to the open-source community and academic resources that
inspired this work.
