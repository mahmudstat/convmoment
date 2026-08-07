# 

## Why This Package?

**Novelty**: The *generalized binomial framework* (Mahmud, 2025) unifies
all moment transformations — raw-to-raw, raw-to-central, central-to-raw
— under a single symbolic operator:

\\ \mu'\_r(k) \equiv (a + b)^r \quad \text{with} \quad a^j \mapsto
\mu'\_j(a), \quad b = a - k \\

Instead of memorizing separate formulas for each conversion, **one rule
handles everything**. The transformation uses Pascal’s triangle
coefficients, making it exact (machine precision) and extensible to
arbitrary order without manual derivation.

## Installation

``` r

# From CRAN (once accepted)
install.packages("convmoment")

# From GitHub
# remotes::install_github("mahmudstat/convmoment")
library(convmoment)
```

## Quick Reference

| Function | Purpose |
|----|----|
| `conv_moment_all(x, a, k)` | Convert raw moments from origin `a` to origin `k` |
| `raw2central(raw_moments, origin)` | Convert raw moments to central moments (about the mean) |
| `central2raw(central_moments, mean_val)` | Convert central moments back to raw moments about 0 |
| `get_moments(x, a, r, na_rm = FALSE, decimal = 3)` | Compute moments directly from sample data |

## Example 1: Raw-to-Raw Transformation

``` r

# Raw moments about a = 2: mu'_1 = -1, mu'_2 = 7, mu'_3 = 39
moments_a2 <- c(-1, 7, 39)

# Convert to origin k = 5
moments_k5 <- conv_moment_all(moments_a2, a = 2, k = 5)
moments_k5
#> [1]  -4  22 -78
```

## Example 2: Raw-to-Central and Round-Trip

``` r

set.seed(42)
x <- rnorm(200, mean = 10, sd = 3)

# Compute raw moments about 0 (orders 1-5)
raw_m <- sapply(1:5, function(r) mean(x^r))

# Convert to central moments
central_m <- raw2central(raw_m, origin = 0)

# Verify round-trip: central -> raw -> central
raw_back <- central2raw(central_m, mean_val = mean(x))
all.equal(raw_m, raw_back)
#> [1] TRUE
```

## Example 3: Compute Moments from Data

``` r

set.seed(123)
sample_data <- rnorm(100, mean = 5, sd = 2)

# Raw moments about origin a = 2, up to order 4
get_moments(sample_data, a = 2, r = 4, decimal = 4)
#>   Order  Moment
#> 1     1  3.1808
#> 2     2 13.4172
#> 3     3 64.0309
#> 4     4 338.1910

# Central moments (use a = mean)
get_moments(sample_data, a = mean(sample_data), r = 4, decimal = 4)
#>   Order  Moment
#> 1     1  0.0000
#> 2     2  3.8942
#> 3     3 -0.1923
#> 4     4 45.7821
```

## Key Advantages

- **One formula, all conversions** — no separate rules for raw↔︎central
- **Exact precision** — binomial identity, not numerical approximation
- **Any order** — scales to high moments without manual formulas
- **Data-free transformation** — convert pre-computed moments in `O(r²)`
  vs `O(n·r)` recomputation

## Further Reading

- **Theory & validation**: See Mahmud (2025) for derivations,
  Binomial/Normal distribution proofs, and matrix formulation
- **Performance**: Transformation is `O(r²)` vs `O(n·r)` for
  recomputation from raw data
