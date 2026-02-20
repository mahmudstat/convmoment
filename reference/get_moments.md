# Moment Estimation

This function estimates raw moments around a certain origin or central
moments up to a certain degree (r)

## Usage

``` r
get_moments(x, a, r, na_rm = FALSE, decimal = 3)
```

## Arguments

- x:

  A numeric vector with values of a variable

- a:

  The origin

- r:

  The highest order

- na_rm:

  whether to remove NA; The default value is FALSE

- decimal:

  The no. of digits after decimal

## Value

A data frame of `r` rows and 2 columns; the columns represent order of
moment and the moment.

## Details

To find the raw moments use the arbitrary origin `a`, while, for central
moments, use `a = mean(x)`.

## Examples

``` r
x <- sample(10, 5)
get_moments(x, 2, 3) # test r > 0
#>   Order Moment
#> 1     1      4
#> 2     2     18
#> 3     3     88
```
