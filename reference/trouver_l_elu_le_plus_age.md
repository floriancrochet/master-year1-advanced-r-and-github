# Trouver l'élu le plus âgé

Cette fonction identifie l'élu le plus âgé dans un data.frame, en
calculant l'âge à partir de la date de naissance.

## Usage

``` r
trouver_l_elu_le_plus_age(df, ref_date = Sys.Date())
```

## Arguments

- df:

  Un data.frame contenant une colonne `Date de naissance` au format
  `"jour/mois/année"`, ainsi que les colonnes `Nom de l'élu` et
  `Prénom de l'élu`.

## Value

Un data.frame avec les colonnes :

- `Nom de l'élu` : Nom de l'élu le plus âgé.

- `Prénom de l'élu` : Prénom de l'élu le plus âgé.

- `Date de naissance` : Date de naissance de l'élu le plus âgé.

- `âge` : Âge en années de l'élu le plus âgé.

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

trouver_l_elu_le_plus_age(df_Nantes)
#> Error in trouver_l_elu_le_plus_age(df_Nantes): could not find function "trouver_l_elu_le_plus_age"

trouver_l_elu_le_plus_age(df_Aignan)
#> Error in trouver_l_elu_le_plus_age(df_Aignan): could not find function "trouver_l_elu_le_plus_age"

trouver_l_elu_le_plus_age(df_Loire_Atlantique)
#> Error in trouver_l_elu_le_plus_age(df_Loire_Atlantique): could not find function "trouver_l_elu_le_plus_age"

trouver_l_elu_le_plus_age(df_Gers)
#> Error in trouver_l_elu_le_plus_age(df_Gers): could not find function "trouver_l_elu_le_plus_age"
```
