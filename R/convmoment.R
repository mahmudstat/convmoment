#' Convert All Moments Up to Order K Across Origins
#'
#' Transforms a vector of raw moments about origin \code{a} to moments about
#' target origin \code{k} using the generalized binomial transformation
#' (Theorem 1, Mahmud 2025).
#'
#' @param x Numeric vector of raw moments about origin \code{a}
#'   (orders 1, 2, ..., K).
#' @param a Initial origin (numeric).
#' @param k Target origin (numeric).
#' @returns Numeric vector of moments about \code{k} (orders 1..K).
#' @export
#' @examples
#' # Raw moments about a=2: mu'_1=-1, mu'_2=7, mu'_3=39
#' x <- c(-1, 7, 39)
#' conv_moment_all(x, a = 2, k = 5)  # -> c(-4, 22, -78)
conv_moment_all <- function(x, a, k) {
  K <- length(x)
  vapply(seq_len(K), function(r) conv_moment(x, a, k, r), numeric(1))
}

#' Convert Raw Moments to Central Moments
#'
#' Convenience wrapper converting raw moments about origin \code{a}
#' to central moments (about the mean).
#'
#' @param raw_moments Numeric vector of raw moments about \code{origin}
#'   (orders 1..K).
#' @param origin Initial origin (default 0).
#' @returns Numeric vector of central moments (orders 1..K).
#' @export
#' @examples
#' x <- c(20, 25, 29, 32, 40)
#' raw_direct <- sapply(1:5, function(r) mean(x^r))
#' raw2central(raw_direct, origin = 0)
raw2central <- function(raw_moments, origin = 0) {
  mean_val <- raw_moments[1] + origin
  conv_moment_all(raw_moments, a = origin, k = mean_val)
}

#' Convert Central Moments to Raw Moments About Zero
#'
#' Convenience wrapper converting central moments (about the mean)
#' to raw moments about origin 0.
#'
#' @param central_moments Numeric vector of central moments (orders 1..K).
#' @param mean_val Population/sample mean (numeric).
#' @returns Numeric vector of raw moments about 0 (orders 1..K).
#' @export
#' @examples
#' x <- c(20, 25, 29, 32, 40)
#' mean_x <- mean(x)
#' central_direct <- sapply(1:5, function(r) mean((x - mean_x)^r))
#' central2raw(central_direct, mean_val = mean_x)
central2raw <- function(central_moments, mean_val) {
  conv_moment_all(central_moments, a = mean_val, k = 0)
}