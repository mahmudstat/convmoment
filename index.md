# convmoment

**convmoment** implements the generalized binomial framework for
transforming statistical moments of any order across arbitrary origins
(Mahmud, 2025). It provides a unified, exact, and computationally
efficient
![O(r^2)](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;O%28r%5E2%29 "O(r^2)")
method for:

- **Raw-to-Raw** transformations across arbitrary origins ![a \to
  k](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;a%20%5Cto%20k "a \to k")
- **Raw-to-Central** transformations (moments about origin
  ![a](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;a "a")
  to central moments about the mean)
- **Central-to-Raw** transformations (central moments back to raw
  moments about
  ![0](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;0 "0"))
- **Direct Moment Computation** from sample data up to degree
  ![r](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;r "r")

The underlying mathematical identity uses the symbolic binomial
operator:

\![ \mu’\_r(k) \equiv (a + b)^r = \sum\_{j=0}^r \binom{r}{j} \mu’\_j(a)
\\
b^{r-j}\](<https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%20%5Cmu%27_r%28k%29%20%5Cequiv%20%28a%20%2B%20b%29%5Er%20%3D%20%5Csum_%7Bj%3D0%7D%5Er%20%5Cbinom%7Br%7D%7Bj%7D%20%5Cmu%27_j%28a%29%20%5C%2C%20b%5E%7Br-j%7D%20>
” \mu’*r(k) \equiv (a + b)^r = \sum*{j=0}^r \binom{r}{j} \mu’\_j(a) \\
b^{r-j} “)

where ![b = a -
k](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;b%20%3D%20a%20-%20k "b = a - k")
is the origin-shift parameter and ![a^j \mapsto
\mu’\_j(a)](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;a%5Ej%20%5Cmapsto%20%5Cmu%27_j%28a%29 "a^j \mapsto \mu'_j(a)").

------------------------------------------------------------------------

## Installation

You can install the released version of **convmoment** from
[CRAN](https://CRAN.R-project.org) (once accepted) with:

``` r

install.packages("convmoment")
```

Or install the development version from
[GitHub](https://github.com/mahmudstat/convmoment) using `pak`:

``` r

# install.packages("pak")
pak::pak("mahmudstat/convmoment")
```

------------------------------------------------------------------------

## Key Functions

| Function | Description |
|:---|:---|
| `conv_moment_all(x, a, k)` | Convert a vector of raw moments (orders ![1 \dots K](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;1%20%5Cdots%20K "1 \dots K")) from origin ![a](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;a "a") to target origin ![k](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;k "k") |
| `raw2central(raw_moments, origin)` | Convert raw moments about `origin` to central moments (about the mean) |
| `central2raw(central_moments, mean_val)` | Convert central moments to raw moments about origin ![0](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;0 "0") |
| `get_moments(x, a, r, na_rm, decimal)` | Compute raw or central moments directly from sample data ![x](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;x "x") up to degree ![r](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;r "r") |

------------------------------------------------------------------------

## Examples

### 1. Raw-to-Raw Transformation Across Origins

Suppose the raw moments of a variable about origin ![a =
2](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;a%20%3D%202 "a = 2")
are ![\mu’\_1(2) =
1](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Cmu%27_1%282%29%20%3D%201 "\mu'_1(2) = 1"),
![\mu’\_2(2) =
16](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Cmu%27_2%282%29%20%3D%2016 "\mu'_2(2) = 16"),
and ![\mu’\_3(2) =
-40](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Cmu%27_3%282%29%20%3D%20-40 "\mu'_3(2) = -40").
What are the raw moments about origin ![k =
0](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;k%20%3D%200 "k = 0")?

``` r

library(convmoment)

# Raw moments about origin a = 2
x <- c(1, 16, -40)

# Convert to origin k = 0
conv_moment_all(x, a = 2, k = 0)
#> [1]  3 24 76
```

------------------------------------------------------------------------

### 2. Raw-to-Central and Central-to-Raw Conversions

Convert raw moments about 0 to central moments (about the mean) and
perform a round-trip check:

``` r

set.seed(42)
data <- rnorm(200, mean = 10, sd = 3)

# Compute raw moments about 0 (orders 1..5)
raw_m <- sapply(1:5, function(r) mean(data^r))

# Convert raw moments to central moments
central_m <- raw2central(raw_m, origin = 0)
central_m
#> [1]    0.000000    8.505605   -3.469533  224.557258 -305.155626

# Round-trip back to raw moments
raw_reconstructed <- central2raw(central_m, mean_val = mean(data))
all.equal(raw_m, raw_reconstructed)
#> [1] TRUE
```

------------------------------------------------------------------------

### 3. Compute Moments Directly from Sample Data

Calculate raw moments around origin ![a =
2](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;a%20%3D%202 "a = 2")
up to 4th order:

``` r

set.seed(123)
sample_data <- rnorm(100, mean = 5, sd = 2)

# Compute moments about origin a = 2 up to order r = 4
get_moments(sample_data, a = 2, r = 4, decimal = 4)
#>   Order   Moment
#> 1     1   3.1808
#> 2     2  13.4172
#> 3     3  64.0309
#> 4     4 338.1910
```

------------------------------------------------------------------------

## Documentation & Vignette

For full theoretical details, high-order examples, distribution
benchmarks (Binomial, Normal), and matrix formulations, visit the online
documentation website:

👉 **<https://www.thinkermahmud.com/convmoment/>**

------------------------------------------------------------------------

## Citation

If you use `convmoment` in your work, please cite:

``` text
Mahmud, A. A. (2025). A Generalized Binomial Framework for Moment Transformations
Across Arbitrary Origins. R package version 0.2.3.
```

------------------------------------------------------------------------

## License

This package is licensed under the [MIT
License](https://mahmudstat.github.io/convmoment/LICENSE.md).
