#'
#' zip two vector-like objects into a dataframe

zip <- function(x, y, broadcast = FALSE) {
  if (broadcast == FALSE) {
    check_length(x, y)
  }
  
  else {
    if (length(x) > length(y)) {
      y <- rep(y, ceiling(length(x) / length(y) ) )[1:length(x)]
    }
    else {
      x <- rep(x, ceiling(length(y) / length(x) ) )[1:length(y)]
      
    }
  }
  
  result <- data.frame(x = x, 
                       y = y)
  return(result)
}