# Valider le schéma des données d'un data.frame

Cette fonction vérifie que les colonnes du data.frame sont conformes à
un schéma prédéfini. Le schéma attendu inclut des colonnes spécifiques
liées aux informations sur les élus.

## Usage

``` r
valider_schema(df)
```

## Arguments

- df:

  Un data.frame, contenant des informations sur les élus, qui doit avoir
  au minimum les colonnes suivantes : `Code du département`,
  `Libellé du département`, `Code de la commune`,
  `Libellé de la commune`, `Nom de l'élu`, `Prénom de l'élu`,
  `Date de naissance`, `Code de la catégorie socio-professionnelle`,
  `Libellé de la fonction`.

## Value

Aucun retour explicite. Un message ou un avertissement est affiché si le
schéma n’est pas respecté.
