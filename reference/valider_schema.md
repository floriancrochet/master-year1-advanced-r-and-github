# Valider le schéma des données d'un data.frame

Cette fonction vérifie que les colonnes du data.frame sont conformes à
un schéma prédéfini. Le schéma attendu inclut des colonnes spécifiques
liées aux informations sur les élus.

## Usage

``` r
valider_schema(df)
```

## Arguments

- df:

  Un data.frame, contenant des informations sur les élus, qui doit avoir
  au minimum les colonnes suivantes : `Code du département`,
  `Libellé du département`, `Code de la commune`,
  `Libellé de la commune`, `Nom de l'élu`, `Prénom de l'élu`,
  `Date de naissance`, `Code de la catégorie socio-professionnelle`,
  `Libellé de la fonction`.

## Value

Aucun retour explicite. Un message ou un avertissement est affiché si le
schéma n’est pas respecté.

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

valider_schema(df_Nantes)
#> Error in valider_schema(df_Nantes): could not find function "valider_schema"

valider_schema(df_Aignan)
#> Error in valider_schema(df_Aignan): could not find function "valider_schema"

valider_schema(df_Loire_Atlantique)
#> Error in valider_schema(df_Loire_Atlantique): could not find function "valider_schema"

valider_schema(df_Gers)
#> Error in valider_schema(df_Gers): could not find function "valider_schema"

valider_schema(df_gers_loire_atlantique)
#> Error in valider_schema(df_gers_loire_atlantique): could not find function "valider_schema"
```
