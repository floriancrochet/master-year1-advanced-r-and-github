# Trouver les communes avec la moyenne d'âge la plus faible et la plus élevée

Cette fonction permet de trouver les communes avec la moyenne d’âge des
élus la plus faible et la plus élevée. Elle regroupe les données par
commune, applique une fonction de calcul de la distribution des âges des
élus à chaque groupe, puis sélectionne les communes avec les moyennes
d’âge les plus basses et les plus élevées.

## Usage

``` r
trouver_moyenne_age_faible_elevee(df, ref_date = Sys.Date())
```

## Arguments

- df:

  Un data.frame contenant les informations sur les élus, incluant les
  colonnes `Libellé de la commune` et les informations nécessaires pour
  calculer la moyenne d’âge des élus par commune.

## Value

Un tibble contenant les informations des communes avec la moyenne d’âge
la plus faible et la plus élevée. Les colonnes retournées incluent :

- `Libellé de la commune` : Le nom de la commune,

- `Moyenne` : La moyenne d’âge des élus dans la commune.

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

trouver_moyenne_age_faible_elevee(df_Nantes)
#> Error in trouver_moyenne_age_faible_elevee(df_Nantes): could not find function "trouver_moyenne_age_faible_elevee"

trouver_moyenne_age_faible_elevee(df_Aignan)
#> Error in trouver_moyenne_age_faible_elevee(df_Aignan): could not find function "trouver_moyenne_age_faible_elevee"

trouver_moyenne_age_faible_elevee(df_Loire_Atlantique)
#> Error in trouver_moyenne_age_faible_elevee(df_Loire_Atlantique): could not find function "trouver_moyenne_age_faible_elevee"

trouver_moyenne_age_faible_elevee(df_Gers)
#> Error in trouver_moyenne_age_faible_elevee(df_Gers): could not find function "trouver_moyenne_age_faible_elevee"
```
