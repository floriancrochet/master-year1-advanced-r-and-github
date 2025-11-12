# Visualiser la répartition des élus par catégorie socio-professionnelle dans un département

Cette fonction génère un graphique montrant la répartition des élus d'un
département par catégorie socio-professionnelle. Le graphique est un
diagramme à barres, où l'axe des x représente les codes des catégories
socio-professionnelles et l'axe des y le nombre d'élus dans chaque
catégorie. Elle affiche les 10 catégories les plus représentées dans le
département.

## Usage

``` r
# S3 method for class 'departement'
plot(x, ...)
```

## Arguments

- x:

  Un data.frame contenant des informations sur les élus, incluant les
  colonnes `Code de la catégorie socio-professionnelle`,
  `Libellé de la catégorie socio-professionnelle`,
  `Libellé du département`, et `Code de la commune`.

- ...:

  Arguments supplémentaires, non utilisés dans cette méthode.

## Value

Un graphique généré avec `ggplot2` représentant la répartition des élus
du département par catégorie socio-professionnelle. Il affiche les 10
catégories socio-professionnelles les plus représentées en fonction du
nombre d'élus.

## Examples

``` r
# Exemples d'utilisation


# Données (départements)

df_Loire_Atlantique <- df_gers_loire_atlantique |>
  dplyr::filter(`Libellé du département` == "Loire-Atlantique")

df_Gers <- df_gers_loire_atlantique |>
  dplyr::filter(`Libellé du département` == "Gers")


# data.frames appartenant à la classe departement

df_Loire_Atlantique <- structure(
  df_Loire_Atlantique, 
  class = c("departement", class(df_Loire_Atlantique))
)

df_Gers <- structure(
  df_Gers, 
  class = c("departement", class(df_Gers))
)


# Utilisation de la fonction

plot(df_Loire_Atlantique)
#> Warning: Cannot convert object of class list into a grob.
#> $graphique

#> 
#> $graphique_sans_legende

#> 
#> $legende

#> 

plot(df_Gers)
#> Warning: Cannot convert object of class list into a grob.
#> $graphique

#> 
#> $graphique_sans_legende

#> 
#> $legende

#> 
```
