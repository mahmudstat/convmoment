# Convert Raw Moments to Central Moments

Convenience wrapper converting raw moments about origin `a` to central
moments (about the mean).

## Usage

``` r
raw2central(raw_moments, origin = 0)
```

## Arguments

- raw_moments:

  Numeric vector of raw moments about `origin` (orders 1..K).

- origin:

  Initial origin (default 0).

## Value

Numeric vector of central moments (orders 1..K).

## Examples

``` r
x <- c(20, 25, 29, 32, 40)
raw_direct <- sapply(1:5, function(r) mean(x^r))
raw2central(raw_direct, origin = 0)
#> [1]     0.000    45.360    85.776  4228.291 15977.969
```
