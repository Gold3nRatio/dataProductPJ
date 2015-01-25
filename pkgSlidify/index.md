---
title: "R Package Dependency"
author: "github.com/Gold3nRatio"
highlighter: highlight.js
output: pdf_document
job: null
knit: slidify::knit2slides
mode: selfcontained
hitheme: tomorrow
subtitle: null
framework: io2012
widgets: []
---

## R Package Installation

Most R applications could install packages with: 

```r
install.packages('packageName')
```
When installation can not be completed and requires to install from local drives:
- Work place block
- CRAN not connecting

---

## Application Tasks

The application will perform the following tasks:
- Identify the R package to analyze
- Extract information from available.packages()
- Display the dependencies of the R package
    - Depends
    - Imports
    - Suggests

---

## Example: ggplot2

User needs to install ggplot2, but can not directly use `install.packages`.

User enters the package name in the inbox and get information.

**ggplot2**

List of dependencies are: R (>= 2.14), stats, methods

List of imports are: plyr (>= 1.7.1), digest, grid, gtable (>= 0.1.1), reshape2, scales (>= 0.2.3), proto, MASS

List of suggests are: quantreg, Hmisc, mapproj, maps, hexbin, maptools, multcomp, nlme, testthat, knitr, mgcv

---

## Example 2: knitr

**knitr**

List of dependencies are: R (>= 2.14.1)

List of imports are: evaluate (>= 0.5.5), digest, formatR (>= 1.0), highr (>= 0.4),\nmarkdown (>= 0.7.4), stringr (>= 0.6), tools

List of suggests are: testit, rgl (>= 0.95.1201), codetools, rmarkdown, XML, RCurl
