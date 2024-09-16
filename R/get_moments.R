#' Moment Estimation
#'
#' This function estimates raw moments around a certain origin or central 
#' moments up to a certain degree (r)
#'
#' To find the raw moments use the origin `a`, while, for central moments,
#' use `mean(x)`. 
#'
#' @param x A numeric vector with values of a variable
#' @param a The origin
#' @param r The highest order
#' @param decimal The no. of digits after decimal

#' @returns A vector of raw or central moments

#' @examples
#' x <- sample(10, 5)
#' get_moments(x, 2, 3) # test r > 0

#' @export
get_moments <- function(x, a, r, decimal = 3){
  options(scipen=999)
  mu <- c()
  for (i in 1:r) {
    mu[i] <- sum((x-a)^i)/length(x)
    }
  df <- data.frame(Order = 1:r,
                   Moment = round(mu, decimal))
  return(df)
}
