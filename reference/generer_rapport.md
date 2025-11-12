# Générer un rapport Quarto et le déplacer vers un chemin spécifié

Cette fonction génère un rapport Quarto en utilisant les paramètres
`commune` et `departement` spécifiés. Après la génération, le fichier
est déplacé vers le chemin de destination spécifié par l'utilisateur.

## Usage

``` r
generer_rapport(commune, departement, output, df)
```

## Arguments

- commune:

  Une chaîne de caractères représentant le numéro de la commune à
  inclure dans le rapport.

- departement:

  Une chaîne de caractères représentant le numéro du département à
  inclure dans le rapport.

- output:

  Une chaîne de caractères représentant le chemin de destination où le
  fichier rapport doit être déplacé. Le fichier généré sera déplacé vers
  ce chemin sous le nom de spécifié.

- df:

  Un data.frame contenant des informations sur les élus,

## Value

Aucun retour. Le fichier rapport.html est généré et déplacé vers le
chemin spécifié.

## Examples

``` r
# Exemples d'utilisation


# Données

data("df_gers_loire_atlantique")


# Utilisation de la fonction

# Générer un rapport pour Nantes (44109) et la Loire-Atlantique (44) en html
# generer_rapport("44109", "44", "chemin/absolu/rapport_final.html", df_gers_loire_atlantique)

# Générer un rapport pour Nantes (44109) et la Loire-Atlantique (44) en html
# generer_rapport("44109", "44", "chemin/absolu/rapport_final.html", df_gers_loire_atlantique)
```
