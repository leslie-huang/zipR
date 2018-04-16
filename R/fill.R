#'
#' Use a given fillvalue to fill in a shorter sequence and returns a sequence of equal length to the longer sequence. Takes a subset of the fill sequence if fill sequence is longer than the difference between the longer and shorter sequences
#' @param shorter shorter vector-like object
#' @param longer longer vector-like object
#' @param fillvalue sequence of value(s) to fill in shorter vector. If fillvalue is longer than the difference between `shorter` and `longer`, values from fillvalue will be taken only until `shorter` is the same length as `longer`
#'
#' @export


fill <- function(longer, shorter, fillvalue) {
  diff <- length(longer) - length(shorter)

  fillers <- rep(fillvalue, diff)[1:diff]
  shorter <- c(shorter, fillers)

  return(shorter)
}
