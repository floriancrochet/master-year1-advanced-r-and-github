# Compter le nombre d'élus

Cette fonction compte le nombre d'élus distincts dans un data.frame en
se basant sur les colonnes `Nom de l'élu`, `Prénom de l'élu`, et
`Date de naissance`.

## Usage

``` r
compter_nombre_d_elus(df)
```

## Arguments

- df:

  Un data.frame contenant les colonnes `Nom de l'élu`,
  `Prénom de l'élu`, et `Date de naissance` (type `character` pour les
  deux premières et `Date` pour la dernière).

## Value

Un entier représentant le nombre d'élus distincts dans le data.frame.

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

compter_nombre_d_elus(df_Nantes)
#> Error in compter_nombre_d_elus(df_Nantes): could not find function "compter_nombre_d_elus"

compter_nombre_d_elus(df_Aignan)
#> Error in compter_nombre_d_elus(df_Aignan): could not find function "compter_nombre_d_elus"

compter_nombre_d_elus(df_Loire_Atlantique)
#> Error in compter_nombre_d_elus(df_Loire_Atlantique): could not find function "compter_nombre_d_elus"

compter_nombre_d_elus(df_Gers)
#> Error in compter_nombre_d_elus(df_Gers): could not find function "compter_nombre_d_elus"
```
