# Trouver l'élu(e) le plus âgé(e) et le/la plus jeune

Cette fonction permet de trouver l'élu(e) le plus âgé(e) et le/la plus
jeune dans un data.frame d'élus. Elle calcule l'âge des élus à partir de
leur date de naissance, puis retourne les informations concernant
l'élu(e) le/la plus âgé(e) et le/la plus jeune. La fonction trie les
élus par date de naissance et sélectionne le premier et le dernier élu.

## Usage

``` r
trouver_elu_le_plus_age_jeune(df, ref_date = Sys.Date())
```

## Arguments

- df:

  Un data.frame contenant les informations sur les élus, incluant les
  colonnes `Nom de l'élu`, `Prénom de l'élu`, `Date de naissance`, et
  `Libellé de la commune`.

## Value

Un tibble avec les informations de l'élu(e) le/la plus âgé(e) et de
l'élu(e) le/la plus jeune. Les colonnes retournées incluent :

- `Nom de l'élu` : Le nom de l'élu,

- `Prénom de l'élu` : Le prénom de l'élu,

- `Date de naissance` : La date de naissance de l'élu,

- `âge` : L'âge calculé de l'élu,

- `Libellé de la commune` : La commune à laquelle appartient l'élu.
