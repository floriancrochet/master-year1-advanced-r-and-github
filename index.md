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
