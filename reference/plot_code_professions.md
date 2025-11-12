# Visualiser la répartition des élus par catégorie socio-professionnelle

Cette fonction génère un graphique en barres représentant la répartition
des élus selon leur catégorie socio-professionnelle.

## Usage

``` r
plot_code_professions(df)
```

## Arguments

- df:

  Un data.frame contenant une colonne
  `Code de la catégorie socio-professionnelle`.

## Value

Un objet ggplot affichant un diagramme en barres de la distribution des
élus par catégorie socio-professionnelle.

## Examples

``` r
# Exemples d'utilisation


# Données (villes ou départements)

df_Nantes <- df_gers_loire_atlantique |>
  dplyr::filter(`Libellé de la commune` == "Nantes")

df_Aignan <- df_gers_loire_atlantique |>
  dplyr::filter(`Libellé de la commune` == "Aignan")

df_Loire_Atlantique <- df_gers_loire_atlantique |>
  dplyr::filter(`Libellé du département` == "Loire-Atlantique")

df_Gers <- df_gers_loire_atlantique |>
  dplyr::filter(`Libellé du département` == "Gers")


# Utilisation de la fonction

plot_code_professions(df_Nantes)
#> Error in plot_code_professions(df_Nantes): could not find function "plot_code_professions"

plot_code_professions(df_Aignan)
#> Error in plot_code_professions(df_Aignan): could not find function "plot_code_professions"

plot_code_professions(df_Loire_Atlantique)
#> Error in plot_code_professions(df_Loire_Atlantique): could not find function "plot_code_professions"

plot_code_professions(df_Gers)
#> Error in plot_code_professions(df_Gers): could not find function "plot_code_professions"
```
