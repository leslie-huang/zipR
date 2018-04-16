#'
#' zip two vector-like objects into a dataframe
#' @param x vector-like object
#' @param y vector-like object
#' @param broadcast defaults to FALSE; if TRUE, shorter sequence is repeated until its length is equal to that of the longer sequence
#' @param fill defaults to FALSE; bool for whether fillvalue should be implemented
#' @param fillvalue value or sequence of value(s) to fill in shorter sequence until it is the same length as the longer sequence
#'
#' @export


zipr <- function(x = x, y = x, broadcast = FALSE, fill = FALSE, fillvalue = NA) {
  if (broadcast == TRUE & fill == TRUE) {
    stop("Error: cannot specify both broadcast = TRUE and fillvalue = seq ")
  }

  else if (broadcast == FALSE & fill == FALSE) {
    check_length(x, y)

  }

  else if (broadcast == TRUE & fill == FALSE) {
    if (length(x) > length(y)) {
      y <- broadcast(x, y)
    }

    else {
      x <- broadcast(y, x)
    }
  }

  else if (broadcast == FALSE & fill == TRUE) {
    if (length(x) > length(y)) {
      y <- fill(x, y, fillvalue)
    }
    else {
      x <- fill(y, x, fillvalue)
    }
  }


  result <- data.frame(x = x,
                       y = y)
  return(result)

}
