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
