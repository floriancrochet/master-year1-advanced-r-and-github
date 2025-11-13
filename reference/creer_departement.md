# Créer un objet de classe `departement` à partir d'un data.frame

Cette fonction prend un data.frame contenant des informations sur un
département et valide que toutes les lignes correspondent à un seul
département (en vérifiant que le `Code du département` est unique). Elle
transforme ensuite ce data.frame en un objet de classe `departement`
pour lui attribuer un comportement spécifique lors de son utilisation.

## Usage

``` r
creer_departement(df)
```

## Arguments

- df:

  Un data.frame contenant des informations sur les élus d'un
  département. Le data.frame doit inclure la colonne
  `Code du département`.

## Value

Un objet de classe `departement` contenant les mêmes informations que le
data.frame d'entrée, mais avec une nouvelle classe attribuée.

## Examples

``` r
# Exemples d'utilisation


# Données (départements)

df_Loire_Atlantique <- df_gers_loire_atlantique |>
  dplyr::filter(`Libellé du département` == "Loire-Atlantique")

df_Gers <- df_gers_loire_atlantique |>
  dplyr::filter(`Libellé du département` == "Gers")


# Utilisation de la fonction

df_Loire_Atlantique <- creer_departement(df_Loire_Atlantique)

df_Gers <- creer_departement(df_Gers)
```
