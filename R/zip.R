#'
#' zip two vector-like objects into a dataframe
#' @param x vector-like object
#' @param y vector-like object
#' @param broadcast defaults to FALSE; if TRUE, shorter sequence is repeated until its length is equal to that of the longer sequence
#' @param fillvalue value or sequence of value(s) to fill in shorter sequence until it is the same length as the longer sequence

zip <- function(x, y, broadcast = FALSE, fillvalue = NA) {
  if (broadcast == FALSE) {
    if (fillvalue == NA) {
      check_length(x, y)
    }
    else { # broadcast = FALSE but fillvalue = some sequence
      if (length(x) > length(y)) {
        y <- fill(x, y)
      }
      else {
        x <- fill(y, x)
      }
    }
  }
  
  else if (broadcast == TRUE) {
    if (fillvalue != NA) {
      stop("Cannot specify both broadcast = TRUE and fillvalue = seq ")
    }
    
    else { # fillvalue = NA
      if (length(x) > length(y)) {
        y <- broadcast(x, y)
      }
      
      else {
        x <- broadcast(y, x)
      }
    }
    
  }
  
  result <- data.frame(x = x, 
                       y = y)
  return(result)
}