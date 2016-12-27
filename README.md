# Development and Application of Tools for Genetic Analysis of Clonal Populations

by Zhian N. Kamvar

## Abstract

Research on the population genetics of microbial organisms requires the use of
specialized analyses designed for clonal organisms to avoid violating the
assumptions of traditional population genetic models. The tools necessary for
performing these analyses existed as a set of unrelated software with 
non-overlapping capabilities and did not cover all aspects of analysis. This
meant that researchers not only had to reshape their data into different formats
for each analysis, but they also had to switch computing platforms, thus
creating a drain in time, and increasing the risk of propagating human
error into the analysis. To address this problem, we created the software
package *poppr*, written in the R statistical language, available on all
computing platforms. This package is designed for analysis of clonal, partially
clonal, and sexual populations, empowering researchers to perform their work in
a reproducible manner. We additionally demonstrate the utility of *poppr* for
both plant pathological and theoretical questions by using real-world and
simulated data. In chapter 4, we apply these new tools to demonstrate evidence
for at least two origins for the outbreak of the Sudden Oak Death pathogen,
*Phytophthora ramorum* in Curry County, Oregon. In chapter 5, we use *poppr* to
assess the power of the index of association with clone-correction, showing that
clone-correction has the potential to reduce the power of detecting clonal
reproduction. All of the software and analyses in this work were performed in an
open and reproducible framework, serving as an example of the power of
reproducible research in plant pathology.


## Links

 - Web: http://zkamvar.github.io/dissertation 
 - Scholars Archive at Oregon State University: http://hdl.handle.net/1957/60042

----

# Building the document

This was built with the unofficial Oregon State University RMarkdown thesis
template. You can find a copy of this template at
https://github.com/zkamvar/beaverdown.

This should comply with the [thesis guide for Oregon State University][4]. It's
based off of the [overleaf template][5]

## Installation

To install the template, be sure you have the following:

 - [pandoc][0]
 - [LaTeX][1]
 - [R >= 3.3.0][2]
 - [RStudio][3] (optional, but it helps)

Open RStudio and run the following code:

```r
if (!require("beaverdown")){
  if (!require("devtools") || packageVersion("devtools") < package_version("1.6")){
    install.packages("devtools", repos = "http://cran.rstudio.com")
  }
  devtools::install_github("zkamvar/beaverdown")
}
install.packages("poppr")
```

## Rendering

### HTML

Open `index.Rmd` in RStudio and then hit the "knit" button. Alternatively, you
can use:

```r
# In R
bookdown::render_book("index.Rmd")
```

```sh
# In the Terminal
$ ./render.sh
# ----------------------------------------------------------------------
# Rendering HTML
# 
# If you want to render the PDF, set the pdf flag
# 
#     ./render.sh pdf
# ----------------------------------------------------------------------
# 
# 
# 
# processing file: thesis.Rmd
#   |.................................................................| 100%
#    inline R code fragments
# 
# 
# output file: thesis.knit.md
# 
# /usr/local/bin/pandoc +RTS -K512m -RTS thesis.utf8.md --to html --from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash --output thesis.html --smart --email-obfuscation none --standalone --section-divs --table-of-contents --toc-depth 3 --template /Users/zhian/R/bookdown/templates/gitbook.html --number-sections --include-in-header /var/folders/qd/dpdhfsz12wb3c7wz0xdm6dbm0000gn/T//Rtmpyw5Xnp/rmarkdown-strd456e0723e9.html --mathjax --highlight-style pygments --bibliography bib/fronteirs_citations.bib --bibliography bib/main_bibliography.bib --filter /usr/local/bin/pandoc-citeproc
# 
# Output created: _book/1-introduction.html
```

You can view the rendered html document by typing (in osx):

```sh
open _book/1-introduction.html
```

### PDF

```sh
# On the command line
./render.sh pdf
```

```r
# In R, make sure to edit index.Rmd to beaverdown::thesis_pdf
bookdown::render_book("index.Rmd")
```

You can find the thesis in [**_book/thesis.pdf**](_book/thesis.pdf)

## Components

The following components are ones you should edit to customize your thesis:

### [_bookdown.yml](_bookdown.yml)

This is the main configuration file for your thesis. Arrange the order of your
chapters in this file and ensure that the names match the names in your folders.

### [index.Rmd](index.Rmd)

This file contains all the meta information that goes at the beginning of your
document.

### [pre/](pre/)

This folder contains all of the Rmd files to be included in the pretext of your
dissertation (e.g. abstract, acknowledgments, author contributions, etc.).

There is a slight caveat to all of these files: the very first line must be 
plain text or the rendering will be screwed up.

### [chapters/](chapters/)

This folder contains the Rmd files for each chapter in your dissertation. Modify
as you will.

### [bib/](bib/)

Store your bibliography (as bibtex files) here.

### [csl/](csl/)

Specific style files for bibliographies should be stored here. A good source for
citation styles is https://github.com/citation-style-language/styles#readme

### [figure/](figure/) and [data/](data/)

These should be self explanatory. Store your figures and data here and reference
them in your document. 


 [0]: http://pandoc.org/
 [1]: https://www.latex-project.org/get/
 [2]: https://r-project.org
 [3]: https://rstudio.org
 [4]: http://gradschool.oregonstate.edu/progress/thesis-guide
 [5]: https://www.overleaf.com/latex/templates/oregon-state-university-thesis-and-dissertation/wnvzcdhqshxf
