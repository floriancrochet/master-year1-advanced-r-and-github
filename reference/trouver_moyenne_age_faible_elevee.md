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
