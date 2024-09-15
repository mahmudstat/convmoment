#' Moment Conversion
#'
#' This function converts moments of a distribution to and from central and 
#' raw ones. Raw moments about a origin can be converted to raw moments with
#' another origin. 
#'
#' If you want to convert to central moment, use the same function. Just 
#' remember to use the arithmetic mean as the new origin. 
#' 
#' Mean = First raw moment about `a` + `a`; where `a` is the old origin.
#'
#' @param x A numeric vector with moments about `a`, the existing origin. 
#' @param a The old origin
#' @param k The new origin. To convert to central moments, use \eqn{\mu_1'+a}

#' @returns A vector of converted moments

#' @examples
x <- c(1, 16, -40)
conv_moment_all(x, 2, 0)

#' @export
conv_moment_all <- function(x,a,k){
  r <- 1:length(x)
  mom <- c()
  for (i in r){
    mom[i] <- conv_moment(x = x, a = a, k = k, r = i)
  }
  return(mom)
}

