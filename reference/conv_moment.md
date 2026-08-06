# Convert a Single Moment Across Origins (Internal)

Computes the r-th moment about target origin `k` from raw moments about
origin `a` using the generalized binomial transformation.

## Usage

``` r
conv_moment(x, a, k, r)
```

## Arguments

- x:

  Numeric vector of raw moments about origin `a` (orders 1..K, K \>= r).

- a:

  Initial origin.

- k:

  Target origin.

- r:

  Order of the moment to convert (integer \>= 1).

## Value

Numeric scalar: the r-th moment about origin `k`.
