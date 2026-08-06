# Convert All Moments Up to Order K Across Origins

Transforms a vector of raw moments about origin `a` to moments about
target origin `k` using the generalized binomial transformation (Theorem
1, Mahmud 2025).

## Usage

``` r
conv_moment_all(x, a, k)
```

## Arguments

- x:

  Numeric vector of raw moments about origin `a` (orders 1, 2, ..., K).

- a:

  Initial origin (numeric).

- k:

  Target origin (numeric).

## Value

Numeric vector of moments about `k` (orders 1..K).

## Examples

``` r
# Raw moments about a=2: mu'_1=-1, mu'_2=7, mu'_3=39
x <- c(-1, 7, 39)
conv_moment_all(x, a = 2, k = 5)  # -> c(-4, 22, -78)
#> [1]  -4  22 -78
```
