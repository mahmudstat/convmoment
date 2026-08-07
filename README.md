
<!-- README.md is generated from README.Rmd. Please edit that file -->

# convmoment

<!-- badges: start -->

[![R-CMD-check](https://github.com/mahmudstat/convmoment/actions/workflows/pkgdown.yml/badge.svg)](https://github.com/mahmudstat/convmoment/actions/workflows/pkgdown.yml)
[![Documentation](https://img.shields.io/badge/docs-pkgdown-blue.svg)](https://www.thinkermahmud.com/convmoment/)
<!-- badges: end -->

**convmoment** implements the *generalized binomial framework* for
transforming statistical moments of any order across arbitrary origins.
One unified rule replaces separate formulas for raw-to-raw,
raw-to-central, and central-to-raw conversions.

The method uses a symbolic binomial operator:

  
![ \\mu'\_r(k) \\equiv (a + b)^r \\quad \\text{with} \\quad a^j \\mapsto
\\mu'\_j(a), \\quad b = a - k
](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%20%5Cmu%27_r%28k%29%20%5Cequiv%20%28a%20%2B%20b%29%5Er%20%5Cquad%20%5Ctext%7Bwith%7D%20%5Cquad%20a%5Ej%20%5Cmapsto%20%5Cmu%27_j%28a%29%2C%20%5Cquad%20b%20%3D%20a%20-%20k%20
" \\mu'_r(k) \\equiv (a + b)^r \\quad \\text{with} \\quad a^j \\mapsto \\mu'_j(a), \\quad b = a - k ")  

This makes transformations **exact** (machine precision), **extensible**
to any order, and **data-free** — convert pre-computed moments in
`O(r²)` instead of `O(n·r)`.

-----

## Installation

You can install the development version of **convmoment** from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("mahmudstat/convmoment")
```

-----

## Key Functions

| Function                                 | Description                                                        |
| ---------------------------------------- | ------------------------------------------------------------------ |
| `conv_moment(x, a, k, r)`                | Convert single moment of order `r` from origin `a` to `k`          |
| `conv_moment_all(x, a, k)`               | Convert vector of raw moments (orders 1..K) from origin `a` to `k` |
| `raw2central(raw_moments, origin)`       | Raw moments → central moments (about mean)                         |
| `central2raw(central_moments, mean_val)` | Central moments → raw moments about 0                              |
| `get_moments(x, a, r, na_rm, decimal)`   | Compute moments directly from sample data                          |

-----

## Quick Examples

### Raw-to-Raw

``` r
library(convmoment)
x <- c(-1, 7, 39)  # moments about a = 2
conv_moment_all(x, a = 2, k = 5)
#> [1]  -4  22 -78
```

### Single Moment (conv\_moment)

``` r
x <- c(-1, 7, 39)  # raw moments about a = 2
conv_moment(x, a = 2, k = 5, r = 2)  # 2nd moment about k = 5
#> [1] 22
```

### Raw-to-Central (raw2central)

``` r
x <- c(-1, 7, 39)  # raw moments about a = 2
mean_x <- -1 + 2  # mean = raw_moment_1 + origin = 1
central <- raw2central(x, origin = 2)
central
#> [1]  0 22 -78
```

### Central-to-Raw (central2raw)

``` r
central <- c(0, 22, -78)  # central moments
raw_back <- central2raw(central, mean_val = 1)
raw_back
#> [1] -1  7 39
```

### Raw-to-Central (using conv\_moment\_all)

``` r
x <- c(-1, 7, 39)  # raw moments about a = 2
mean_x <- -1 + 2  # = 1
central <- conv_moment_all(x, a = 2, k = mean_x)
central
#> [1]  0 22 -78
# Same as raw2central(x, origin = 2)
```

### Central-to-Raw (using conv\_moment\_all)

``` r
central <- c(0, 22, -78)  # central moments
raw_back <- conv_moment_all(central, a = 1, k = 2)
raw_back
#> [1] -1  7 39
# Same as central2raw(central, mean_val = 1)
```

### Round-Trip (exact to machine precision)

``` r
x <- c(-1, 7, 39)  # raw moments about a = 2
mean_x <- -1 + 2  # = 1
central <- conv_moment_all(x, a = 2, k = mean_x)
raw_back <- conv_moment_all(central, a = mean_x, k = 2)
all.equal(x, raw_back)  # TRUE
```

### From Data

``` r
set.seed(123)
y <- rnorm(100, 5, 2)
get_moments(y, a = 2, r = 4, decimal = 4)
#>   Order Moment
#> 1     1 3.1808
#> 2     2 13.4172
#> 3     3 64.0309
#> 4     4 338.1910
```

-----

## License

MIT © Abdullah Al Mahmud
