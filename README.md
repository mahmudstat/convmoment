
<!-- README.md is generated from README.Rmd. Please edit that file -->

# convmoment

<!-- badges: start -->
<!-- badges: end -->

The goal of convmoment is to convert moments of a distribution to and
from central and raw ones. Raw moments about a origin can be converted
to raw moments with another origin.

## Installation

You can install the development version of convmoment from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("mahmudstat/convmoment")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(convmoment)
x <- c(1, 16, -40)
conv_moment_all(x, 2, 0)
#> [1]  3 24 76
```
