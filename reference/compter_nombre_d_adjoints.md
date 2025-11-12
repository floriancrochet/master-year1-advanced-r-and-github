# Compter le nombre d'adjoints

Cette fonction compte le nombre d'occurrences du mot "adjoint" dans la
colonne `Libellé de la fonction` d'un data.frame.

## Usage

``` r
compter_nombre_d_adjoints(df)
```

## Arguments

- df:

  Un data.frame contenant une colonne `Libellé de la fonction` (type
  `character`).

## Value

Un entier représentant le nombre d'occurrences du mot "adjoint".

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

compter_nombre_d_adjoints(df_Nantes)
#> Error in compter_nombre_d_adjoints(df_Nantes): could not find function "compter_nombre_d_adjoints"

compter_nombre_d_adjoints(df_Aignan)
#> Error in compter_nombre_d_adjoints(df_Aignan): could not find function "compter_nombre_d_adjoints"

compter_nombre_d_adjoints(df_Loire_Atlantique)
#> Error in compter_nombre_d_adjoints(df_Loire_Atlantique): could not find function "compter_nombre_d_adjoints"

compter_nombre_d_adjoints(df_Gers)
#> Error in compter_nombre_d_adjoints(df_Gers): could not find function "compter_nombre_d_adjoints"
```
