# Convert Central Moments to Raw Moments About Zero

Convenience wrapper converting central moments (about the mean) to raw
moments about origin 0.

## Usage

``` r
central2raw(central_moments, mean_val)
```

## Arguments

- central_moments:

  Numeric vector of central moments (orders 1..K).

- mean_val:

  Population/sample mean (numeric).

## Value

Numeric vector of raw moments about 0 (orders 1..K).

## Examples

``` r
x <- c(20, 25, 29, 32, 40)
mean_x <- mean(x)
central_direct <- sapply(1:5, function(r) mean((x - mean_x)^r))
central2raw(central_direct, mean_val = mean_x)
#> [1]       29.2      898.0    28956.4   973296.4 33886241.2
```
