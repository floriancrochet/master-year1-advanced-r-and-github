# Visualiser la répartition des élus par catégorie socio-professionnelle dans une commune

Cette fonction génère un graphique montrant la répartition des élus
d'une commune par catégorie socio-professionnelle. Le graphique est un
diagramme à barres, où l'axe des x représente les codes des catégories
socio-professionnelles et l'axe des y le nombre d'élus dans chaque
catégorie. La fonction utilise `ggplot2` pour afficher les résultats.

## Usage

``` r
# S3 method for class 'commune'
plot(x, ...)
```

## Arguments

- x:

  Un data.frame contenant des informations sur les élus, incluant les
  colonnes `Code de la catégorie socio-professionnelle`,
  `Libellé de la catégorie socio-professionnelle`,
  `Libellé de la commune` et `Libellé du département`.

- ...:

  Arguments supplémentaires, non utilisés dans cette méthode.

## Value

Un graphique généré avec `ggplot2` représentant la répartition des élus
de la commune par catégorie socio-professionnelle. Il affiche les codes
professionnels en x et le nombre d'élus par catégorie sur l'axe y.

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

plot(df_Nantes)
#> Warning: Cannot convert object of class list into a grob.
#> $graphique

#> 
#> $graphique_sans_legende

#> 
#> $legende

#> 

plot(df_Aignan)
#> Warning: Cannot convert object of class list into a grob.
#> $graphique

#> 
#> $graphique_sans_legende

#> 
#> $legende

#> 
```
