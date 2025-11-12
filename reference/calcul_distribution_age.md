# Calculer la distribution des âges

Cette fonction calcule la distribution des âges des individus d'un
data.frame en renvoyant des statistiques descriptives : minimum,
quartiles, médiane, moyenne et maximum.

## Usage

``` r
calcul_distribution_age(df, ref_date = Sys.Date(), ...)
```

## Arguments

- df:

  Un data.frame contenant une colonne `Date de naissance` et une colonne
  `Libellé de la commune` ou `Libellé du département`.

- ...:

  Paramètres supplémentaires (non utilisés directement dans cette
  fonction).

## Value

Un tibble contenant le nom de la commune ou du département, ainsi que
les statistiques d'âge : minimum, premier quartile (Q1), médiane,
moyenne, troisième quartile (Q3) et maximum.

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

calcul_distribution_age(df_Nantes, ref_date = as.Date("2024-01-01"))
#> Error in calcul_distribution_age(df_Nantes, ref_date = as.Date("2024-01-01")): could not find function "calcul_distribution_age"

calcul_distribution_age(df_Aignan, ref_date = as.Date("2024-01-01"))
#> Error in calcul_distribution_age(df_Aignan, ref_date = as.Date("2024-01-01")): could not find function "calcul_distribution_age"

calcul_distribution_age(df_Loire_Atlantique, ref_date = as.Date("2024-01-01"))
#> Error in calcul_distribution_age(df_Loire_Atlantique, ref_date = as.Date("2024-01-01")): could not find function "calcul_distribution_age"

calcul_distribution_age(df_Gers, ref_date = as.Date("2024-01-01"))
#> Error in calcul_distribution_age(df_Gers, ref_date = as.Date("2024-01-01")): could not find function "calcul_distribution_age"
```
