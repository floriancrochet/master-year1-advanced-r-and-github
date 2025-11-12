# Résumer les informations d'une commune

Cette fonction affiche un résumé des informations d'une commune,
notamment le nom de la commune, le nombre d'élus, la distribution des
âges des élus, ainsi que le nom et l'âge de l'élu(e) le/la plus âgé(e).

## Usage

``` r
# S3 method for class 'commune'
summary(object, ...)
```

## Arguments

- object:

  Un data.frame contenant des informations sur les élus d'une commune,
  incluant les colonnes `Libellé de la commune` et `Date de naissance`.

- ...:

  Arguments supplémentaires, non utilisés dans cette méthode.

## Value

Aucun retour explicite. La fonction affiche dans la console :

- Le nom de la commune,

- Le nombre d’élus,

- La distribution des âges des élus sous forme de tibble,

- Le nom, le prénom, la date de naissance et l'âge de l’élu(e) le/la
  plus âgé(e), sous forme de tibble.

## Examples

``` r
# Exemples d'utilisation


# Données (villes)

df_Nantes <- df_gers_loire_atlantique |>
  dplyr::filter(`Libellé de la commune` == "Nantes")

df_Aignan <- df_gers_loire_atlantique |>
  dplyr::filter(`Libellé de la commune` == "Aignan")


# data.frames appartenant à la classe commune

df_Nantes <- structure(df_Nantes, class = c("commune", class(df_Nantes)))

df_Aignan <- structure(df_Aignan, class = c("commune", class(df_Aignan)))


# Utilisation de la fonction

summary(df_Nantes)
#> Nom de la commune :  Nantes .
#> 
#> Nombre d’élu.e.s de la commune :  66 .
#> 
#> Distribution des âges des élu.e.s :
#> # A tibble: 1 × 7
#>   Nom      Min    Q1 Médiane Moyenne    Q3   Max
#>   <chr>  <dbl> <dbl>   <dbl>   <dbl> <dbl> <dbl>
#> 1 Nantes    28    43      51      50    59    73
#> 
#> Nom et âge de l’élu.e le ou la plus âgé.e :
#> # A tibble: 1 × 4
#>   `Nom de l'élu` `Prénom de l'élu` `Date de naissance`   âge
#>   <chr>          <chr>             <date>              <dbl>
#> 1 PROCHASSON     François          1952-02-28             73

summary(df_Aignan)
#> Nom de la commune :  Aignan .
#> 
#> Nombre d’élu.e.s de la commune :  15 .
#> 
#> Distribution des âges des élu.e.s :
#> # A tibble: 1 × 7
#>   Nom      Min    Q1 Médiane Moyenne    Q3   Max
#>   <chr>  <dbl> <dbl>   <dbl>   <dbl> <dbl> <dbl>
#> 1 Aignan    36    55      62      60    67    77
#> 
#> Nom et âge de l’élu.e le ou la plus âgé.e :
#> # A tibble: 1 × 4
#>   `Nom de l'élu` `Prénom de l'élu` `Date de naissance`   âge
#>   <chr>          <chr>             <date>              <dbl>
#> 1 GARROS         Marc              1948-02-19             77
```
