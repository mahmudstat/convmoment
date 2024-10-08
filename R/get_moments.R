#' Moment Estimation
#'
#' This function estimates raw moments around a certain origin or central 
#' moments up to a certain degree (r)
#'
#' To find the raw moments use the arbitrary origin `a`, while, for 
#' central moments, use `a = mean(x)`. 
#'
#' @param x A numeric vector with values of a variable
#' @param a The origin
#' @param r The highest order
#' @param na_rm whether to remove NA; The default value is FALSE
#' @param decimal The no. of digits after decimal

#' @returns A data frame of `r` rows and 2 columns; the columns represent
#' order of moment and the moment. 

#' @examples
#' x <- sample(10, 5)
#' get_moments(x, 2, 3) # test r > 0

#' @export
get_moments <- function(x, a, r, na_rm = FALSE, decimal = 3){
  options(scipen=999)
  mu <- c()
  for (i in 1:r) {
    mu[i] <- sum((x-a)^i, na.rm = na_rm)/length(x)
    }
  df <- data.frame(Order = 1:r,
                   Moment = round(mu, decimal))
  return(df)
}
