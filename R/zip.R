#'
#' zip two vector-like objects into a list of pairs

zip <- function(x, y) {
  check_length(x, y)
  
  length <- len(x)
  
  result <- list()
  
  for (i in length) {
    result <- c(result, c(x[i], y[i]) )
  }
  
  return(result)
}