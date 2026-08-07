# convmoment

**convmoment** implements the *generalized binomial framework* (Mahmud,
2025) for transforming statistical moments of any order across arbitrary
origins. One unified rule replaces separate formulas for raw-to-raw,
raw-to-central, and central-to-raw conversions.

The method uses a symbolic binomial operator:

\![ \mu’\_r(k) \equiv (a + b)^r \quad \text{with} \quad a^j \mapsto
\mu’\_j(a), \quad b = a -
k\](<https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%20%5Cmu%27_r%28k%29%20%5Cequiv%20%28a%20%2B%20b%29%5Er%20%5Cquad%20%5Ctext%7Bwith%7D%20%5Cquad%20a%5Ej%20%5Cmapsto%20%5Cmu%27_j%28a%29%2C%20%5Cquad%20b%20%3D%20a%20-%20k%20>
” \mu’\_r(k) \equiv (a + b)^r \quad \text{with} \quad a^j \mapsto
\mu’\_j(a), \quad b = a - k “)

This makes transformations **exact** (machine precision), **extensible**
to any order, and **data-free** — convert pre-computed moments in
`O(r²)` instead of `O(n·r)`.

------------------------------------------------------------------------

## Installation

``` r

# From CRAN (once accepted)
install.packages("convmoment")

# From GitHub
# remotes::install_github("mahmudstat/convmoment")
library(convmoment)
```

------------------------------------------------------------------------

## Key Functions

| Function | Description |
|----|----|
| `conv_moment_all(x, a, k)` | Convert raw moments from origin `a` to `k` |
| `raw2central(raw_moments, origin)` | Raw moments → central moments (about mean) |
| `central2raw(central_moments, mean_val)` | Central moments → raw moments about 0 |
| `get_moments(x, a, r, na_rm, decimal)` | Compute moments directly from sample data |

------------------------------------------------------------------------

## Quick Examples

### Raw-to-Raw

``` r

library(convmoment)
x <- c(-1, 7, 39)  # moments about a = 2
conv_moment_all(x, a = 2, k = 5)
#> [1]  -4  22 -78
```

### Raw ↔︎ Central (round-trip exact)

``` r

set.seed(42)
x <- rnorm(200, 10, 3)
raw <- sapply(1:5, \(r) mean(x^r))
central <- raw2central(raw, origin = 0)
raw_back <- central2raw(central, mean_val = mean(x))
all.equal(raw, raw_back)  # TRUE
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

------------------------------------------------------------------------

## Documentation

Full vignette: `vignette("convmoment")` or
[online](https://www.thinkermahmud.com/convmoment/)

Theory & validation: Mahmud (2025) — derivations, Binomial/Normal
proofs, matrix form, benchmarks.

------------------------------------------------------------------------

## License

MIT © Abdullah Al Mahmud
