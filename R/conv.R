#' Convert a Single Moment Across Origins
#'
#' Computes the r-th moment about target origin `k` from raw moments
#' about origin `a` using the generalized binomial transformation.
#'
#' @param x Numeric vector of raw moments about origin `a` (orders 1..K, K >= r).
#' @param a Initial origin.
#' @param k Target origin.
#' @param r Order of the moment to convert (integer >= 1).
#' @returns Numeric scalar: the r-th moment about origin `k`.
#' @export
#' @examples
#' x <- c(-1, 7, 39)
#' conv_moment(x, a = 2, k = 5, r = 2)  # returns 22
conv_moment <- function(x, a, k, r) {
  b <- a - k
  # mu_from = [mu_0(a), mu_1(a), ..., mu_r(a)] where mu_0(a) = 1
  mu_from <- c(1, x[1:r])
  coeff <- choose(r, 0:r)
  power <- r:0
  sum(mu_from * coeff * (b^power))
}