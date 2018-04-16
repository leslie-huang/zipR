#'
#' This function checks that the vector-like objects x, y are of equal length.
#' @param x vector-like object
#' @param y vector-like object

check_length <- function(x, y) {
  if (length(x) != length(y)) {
    stop("Error: x, y unequal lengths")
  }
  else {
    #pass
  }
}