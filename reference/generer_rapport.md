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

## Générer un rapport pour Nantes (44109) et la Loire-Atlantique (44) en html

tmp <- tempfile(fileext = ".html")
generer_rapport("44109", "44", tmp, df_gers_loire_atlantique)
#> 
#> 
#> processing file: rapport.qmd
#> 1/19                  
#> 2/19 [unnamed-chunk-1]
#> 3/19                  
#> 4/19 [unnamed-chunk-2]
#> 5/19                  
#> 6/19 [unnamed-chunk-3]
#> 7/19                  
#> 8/19 [unnamed-chunk-4]
#> 9/19                  
#> 10/19 [unnamed-chunk-5]
#> 11/19                  
#> 12/19 [unnamed-chunk-6]
#> 13/19                  
#> 14/19 [unnamed-chunk-7]
#> 15/19                  
#> 16/19 [unnamed-chunk-8]
#> 17/19                  
#> 18/19 [unnamed-chunk-9]
#> 19/19                  
#> output file: rapport.knit.md
#> 
#> pandoc 
#>   to: html
#>   output-file: /home/runner/work/_temp/Library/firstlibflorian/file195d26f25a3f.html
#>   standalone: true
#>   section-divs: true
#>   html-math-method: mathjax
#>   wrap: none
#>   default-image-extension: png
#>   toc: true
#>   incremental: true
#>   variables: {}
#>   
#> metadata
#>   document-css: false
#>   link-citations: true
#>   date-format: long
#>   lang: en
#>   title: Rapport
#>   author: Florian CROCHET
#>   toc-title: Sommaire
#>   output-file: file195d26f25a3f.html
#>   
#> Output created: ../../../../../../tmp/RtmpOs4y2n/file195d26f25a3f.html
#> 
#> 
#> Le rapport a été généré et enregistré dans : /tmp/RtmpOs4y2n/file195d26f25a3f.html

## Générer un rapport pour Nantes (44109) et la Loire-Atlantique (44) en pdf

tmp <- tempfile(fileext = ".pdf")
generer_rapport("44109", "44", tmp, df_gers_loire_atlantique)
#> 
#> 
#> processing file: rapport.qmd
#> 1/19                  
#> 2/19 [unnamed-chunk-1]
#> 3/19                  
#> 4/19 [unnamed-chunk-2]
#> 5/19                  
#> 6/19 [unnamed-chunk-3]
#> 7/19                  
#> 8/19 [unnamed-chunk-4]
#> 9/19                  
#> 10/19 [unnamed-chunk-5]
#> 11/19                  
#> 12/19 [unnamed-chunk-6]
#> 13/19                  
#> 14/19 [unnamed-chunk-7]
#> 15/19                  
#> 16/19 [unnamed-chunk-8]
#> 17/19                  
#> 18/19 [unnamed-chunk-9]
#> 19/19                  
#> output file: rapport.knit.md
#> 
#> pandoc 
#>   to: latex
#>   output-file: rapport.tex
#>   standalone: true
#>   pdf-engine: lualatex
#>   variables:
#>     graphics: true
#>     tables: true
#>   default-image-extension: pdf
#>   
#> metadata
#>   documentclass: scrartcl
#>   classoption:
#>     - DIV=11
#>     - numbers=noendperiod
#>   papersize: letter
#>   header-includes:
#>     - \KOMAoption{captions}{tableheading}
#>   block-headings: true
#>   title: Rapport
#>   author: Florian CROCHET
#>   output-file: file195d311753c.pdf
#>   
#> 
#> Rendering PDF
#> running lualatex - 1
#> 
#> No TeX installation was detected.
#> 
#> Please run 'quarto install tinytex' to install TinyTex.
#> If you prefer, you may install TexLive or another TeX distribution.
#> 
#> WARN: Error encountered when rendering files
#> 
#> Error in quarto::quarto_render(input = qmd_path, output_file = out_file,     output_format = out_format, execute_params = list(code_commune = commune,         code_departement = departement, data.frame_name = df_name,         data.frame_path = df_path), quarto_args = c("--output-dir",         out_dir)): ! Error running quarto CLI from R.
#> Caused by error:
#> ! Could not evaluate cli `{}` expression: `captions`.
#> Caused by error:
#> ! object 'captions' not found
```
