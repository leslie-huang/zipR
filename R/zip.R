#'
#' zip two vector-like objects into a dataframe
#' x vector-like object
#' y vector-like object
#' broadcast defaults to FALSE; if TRUE, shorter sequence is repeated until its length is equal to that of the longer sequence

zip <- function(x, y, broadcast = FALSE) {
  if (broadcast == FALSE) {
    check_length(x, y)
  }
  
  else {
    if (length(x) > length(y)) {
      y <- broadcast(x, y)
    }
    else {
      x <- broadcast(y, x)
    }
  }
  
  result <- data.frame(x = x, 
                       y = y)
  return(result)
}