# convmoment 0.2.3

* Initial CRAN submission version (0.2.3).
* Implemented `conv_moment_all()`, `raw2central()`, `central2raw()`, and `get_moments()`.
* Added `na_rm` parameter to `get_moments()` with proper NA handling and safe global options management (`on.exit()`).
* Fixed BugReports URL to point to GitHub repository.
* Added `vctrs` to Suggests for test compatibility.
* Vignette uses only exported functions.
* Comprehensive test suite covering raw-to-raw, raw-to-central, central-to-raw transformations, round-trip validation, and edge cases.

# convmoment 0.2.1

* Added the function `get_moments()`, which calculates raw or central moments up to order `r`.
* Added package-level documentation.

# convmoment 0.0.1

* Initial development release with core moment conversion functions.