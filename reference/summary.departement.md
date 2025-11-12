# Résumer les informations d'un département

Cette fonction affiche un résumé des informations d'un département,
notamment le nom du département, le nombre de communes, le nombre
d'élus, la distribution des âges des élus, ainsi que le nom et l'âge de
l'élu(e) le/la plus âgé(e) et de l'élu(e) le/la plus jeune. Elle affiche
également les communes ayant la moyenne d’âge la plus faible et la plus
élevée, avec la distribution des âges des élus pour ces communes.

## Usage

``` r
# S3 method for class 'departement'
summary(object, ...)
```

## Arguments

- object:

  Un data.frame contenant des informations sur les élus, incluant les
  colonnes `Libellé du département`, `Code de la commune`, et les
  informations nécessaires pour calculer la distribution des âges,
  trouver l’élu(e) le/la plus âgé(e) et le/la plus jeune, ainsi que la
  moyenne d’âge par commune.

- ...:

  Arguments supplémentaires, non utilisés dans cette méthode.

## Value

Aucun retour explicite. La fonction affiche dans la console :

- Le nom du département,

- Le nombre de communes dans le département,

- Le nombre d’élus dans le département,

- La distribution des âges des élus sous forme de tibble,

- Le nom, le prénom, la date de naissance et l'âge de l’élu(e) le/la
  plus âgé(e), ainsi que celui/ceux de l’élu(e) le/la plus jeune, sous
  forme de tibble,

- Les noms des communes avec la moyenne d’âge la plus faible et la plus
  élevée, ainsi que la distribution des âges des élus pour ces communes.

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
  class = c("df_Gers", class(df_Gers))
)


# Utilisation de la fonction

summary(df_Loire_Atlantique)
#> Nom du département :  Loire-Atlantique .
#> 
#> Nombre de communes dans le département :  207 .
#> 
#> Nombre d’élu.e.s dans le département :  4791 .
#> 
#> Distribution des âges des élu.e.s du département :
#> # A tibble: 1 × 7
#>   Nom                Min    Q1 Médiane Moyenne    Q3   Max
#>   <chr>            <dbl> <dbl>   <dbl>   <dbl> <dbl> <dbl>
#> 1 Loire-Atlantique    23    47      54      55    64    85
#> 
#> Nom et âge de l’élu.e le ou la plus âgé.e et de l’élu.e le ou la plus jeune, ainsi que leur commune :
#> # A tibble: 2 × 5
#>   `Nom de l'élu` `Prénom de l'élu` `Date de naissance` `Libellé de la commune`
#>   <chr>          <chr>             <date>              <chr>                  
#> 1 GERARD         Jean              1940-07-20          La Plaine-Sur-Mer      
#> 2 MERCERON       Leslie            2002-03-05          Saint-Lumine-De-Coutais
#> # ℹ 1 more variable: âge <dbl>
#> 
#> Noms des communes avec la moyenne d’âge la plus faible et la plus élevée, ainsi que la distribution des âges des élu.e.s pour ces communes :
#> # A tibble: 2 × 7
#>   Nom                    Min    Q1 Médiane Moyenne    Q3   Max
#>   <chr>                <dbl> <dbl>   <dbl>   <dbl> <dbl> <dbl>
#> 1 Le Pin                  34    39      42      45    51    60
#> 2 Les Moutiers-En-Retz    51    64      71      69    74    82

summary(df_Gers)
#>  Code du département Libellé du département
#>  Min.   :32          Length:4932           
#>  1st Qu.:32          Class :character      
#>  Median :32          Mode  :character      
#>  Mean   :32                                
#>  3rd Qu.:32                                
#>  Max.   :32                                
#>  Code de la collectivité à statut particulier
#>  Mode:logical                                
#>  NA's:4932                                   
#>                                              
#>                                              
#>                                              
#>                                              
#>  Libellé de la collectivité à statut particulier Code de la commune
#>  Mode:logical                                    Min.   :32001     
#>  NA's:4932                                       1st Qu.:32120     
#>                                                  Median :32234     
#>                                                  Mean   :32235     
#>                                                  3rd Qu.:32348     
#>                                                  Max.   :32468     
#>  Libellé de la commune Nom de l'élu       Prénom de l'élu     Code sexe        
#>  Length:4932           Length:4932        Length:4932        Length:4932       
#>  Class :character      Class :character   Class :character   Class :character  
#>  Mode  :character      Mode  :character   Mode  :character   Mode  :character  
#>                                                                                
#>                                                                                
#>                                                                                
#>  Date de naissance  Code de la catégorie socio-professionnelle
#>  Length:4932        Min.   : 11.00                            
#>  Class :character   1st Qu.: 23.00                            
#>  Mode  :character   Median : 47.00                            
#>                     Mean   : 45.84                            
#>                     3rd Qu.: 71.00                            
#>                     Max.   :165.00                            
#>  Libellé de la catégorie socio-professionnelle Date de début du mandat
#>  Length:4932                                   Length:4932            
#>  Class :character                              Class :character       
#>  Mode  :character                              Mode  :character       
#>                                                                       
#>                                                                       
#>                                                                       
#>  Libellé de la fonction Date de début de la fonction Code nationalité  
#>  Length:4932            Length:4932                  Length:4932       
#>  Class :character       Class :character             Class :character  
#>  Mode  :character       Mode  :character             Mode  :character  
#>                                                                        
#>                                                                        
#>                                                                        
```
