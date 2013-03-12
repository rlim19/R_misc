x <- c(1,2,1,1,3,4,1,1)

getTransitionMatrix <- function(x){
  p <- matrix(nrow = length(as.numeric(levels(as.factor(x)))), ncol = 4, 0)
  for (t in 1:(length(x) - 1)) p[x[t], x[t + 1]] <- p[x[t], x[t + 1]] + 1
  #normalize the matrix
  for (i in 1:4) p[i, ] <- p[i, ] / sum(p[i, ])
  return (p)
}

# example
getTransitionMatrix(x)

