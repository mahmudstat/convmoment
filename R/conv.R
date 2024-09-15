conv_moment <- function(x, a, k, r){
  b <- a-k
  mua <- c(x[length(x):1],1) # Last moment first
  mua_req <- tail(mua, r+1)
  coeff <- choose(r, 0:r)
  power <- 0:r 
  muk <- mua_req*coeff*b^power
  return(sum(muk))
}

