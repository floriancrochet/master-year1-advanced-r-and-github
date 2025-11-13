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
