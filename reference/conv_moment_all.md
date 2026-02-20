# Moment Conversion

This function converts moments of a distribution to and from central and
raw ones. Raw moments about a origin can be converted to raw moments
with another origin.

## Usage

``` r
conv_moment_all(x, a, k)
```

## Arguments

- x:

  A numeric vector with moments about `a`, the existing origin.

- a:

  The old origin

- k:

  The new origin. To convert to central moments, use \\\mu_1'+a\\

## Value

A vector of converted moments

## Details

If you want to convert to central moment, use the same function. Just
remember to use the arithmetic mean as the new origin.

Mean = First raw moment about `a` + `a`; where `a` is the old origin.

## Examples

``` r
x <- c(1, 16, -40)
conv_moment_all(x, 2, 0)
#> [1]  3 24 76
```
