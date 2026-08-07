# Changelog

## convmoment 1.0.0

- Core functions:
  [`conv_moment()`](https://mahmudstat.github.io/convmoment/reference/conv_moment.md),
  [`conv_moment_all()`](https://mahmudstat.github.io/convmoment/reference/conv_moment_all.md),
  [`raw2central()`](https://mahmudstat.github.io/convmoment/reference/raw2central.md),
  [`central2raw()`](https://mahmudstat.github.io/convmoment/reference/central2raw.md),
  [`get_moments()`](https://mahmudstat.github.io/convmoment/reference/get_moments.md)
- Unified symbolic operator: one formula for raw-to-raw, raw-to-central,
  central-to-raw
- Exact transformations (machine precision) via binomial identity
- Comprehensive test suite (11 tests) covering correctness, round-trips,
  edge cases
- Removed vignette; all usage documented in README

## convmoment 0.2.3

- Initial CRAN submission version (0.2.3).
- Implemented
  [`conv_moment_all()`](https://mahmudstat.github.io/convmoment/reference/conv_moment_all.md),
  [`raw2central()`](https://mahmudstat.github.io/convmoment/reference/raw2central.md),
  [`central2raw()`](https://mahmudstat.github.io/convmoment/reference/central2raw.md),
  and
  [`get_moments()`](https://mahmudstat.github.io/convmoment/reference/get_moments.md).
- Added `na_rm` parameter to
  [`get_moments()`](https://mahmudstat.github.io/convmoment/reference/get_moments.md)
  with proper NA handling and safe global options management
  ([`on.exit()`](https://rdrr.io/r/base/on.exit.html)).
- Fixed BugReports URL to point to GitHub repository.
- Added `vctrs` to Suggests for test compatibility.
- Vignette uses only exported functions.
- Comprehensive test suite covering raw-to-raw, raw-to-central,
  central-to-raw transformations, round-trip validation, and edge cases.

## convmoment 0.2.1

- Added the function
  [`get_moments()`](https://mahmudstat.github.io/convmoment/reference/get_moments.md),
  which calculates raw or central moments up to order `r`.
- Added package-level documentation.

## convmoment 0.0.1

- Initial development release with core moment conversion functions.
