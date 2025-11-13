# Bienvenue dans la documentation de firstlibflorian

## Informations générales

- **Nom du package** : `firstlibflorian`  
- **Titre** : Analyse et visualisation des données géographiques et
  démographiques des communes et départements  
- **Version** : 0.1.0
- **Auteur** : Florian Crochet  
- **Licence** : GPL-3  
- **URL** :
  <https://floriancrochet.github.io/masters-year1-advanced-r-and-github/>

## Fonctionnalités

Ce package permet d’analyser et de visualiser des **données
géographiques et démographiques** des communes et départements.

Il offre plusieurs outils pour :

- Générer des **résumés statistiques** sur les communes et
  départements  
- Créer et manipuler des objets de classe **`commune`** et
  **`departement`**  
- Produire des **visualisations graphiques** pour explorer ces données

## Dépendances principales

Le package nécessite plusieurs bibliothèques populaires en R :

- **Manipulation de données** : `dplyr`, `tibble`, `stringr`, `purrr`  
- **Visualisation** : `ggplot2`  
- **Gestion des dates** : `lubridate`  
- **Autres** : `stats`, `quarto`

## Packages suggérés

Le package recommande également des packages pour des fonctionnalités
supplémentaires :

- `knitr`
- `rmarkdown`
- `testthat` (\>= 3.0.0)

## Fonctionnalités principales

Les principales fonctions du package sont les suivantes :

- [`creer_commune()`](../reference/creer_commune.md) : Créer un objet de
  classe `commune`.
- [`creer_departement()`](../reference/creer_departement.md) : Créer un
  objet de classe `departement`.
- [`generer_rapport()`](../reference/generer_rapport.md) : Générer un
  rapport statistique pour un objet `commune` ou `departement`.
- [`plot.commune()`](../reference/plot.commune.md) : Visualiser les
  données géographiques d’une commune.
- [`plot.departement()`](../reference/plot.departement.md) : Visualiser
  les données géographiques d’un département.
- [`summary.commune()`](../reference/summary.commune.md) : Résumé
  statistique d’un objet `commune`.
- [`summary.departement()`](../reference/summary.departement.md) :
  Résumé statistique d’un objet `departement`.

## Installation

Pour installer le package depuis GitHub :

``` r
install.packages("devtools")
devtools::install_github("floriancrochet/masters-year1-advanced-r-and-github")
```
