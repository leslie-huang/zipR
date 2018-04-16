#' broadcasts a shorter vector-like object into a vector of equal length as a longer vector-like object
#' @param longer longer vector-like object
#' @param shorter shorter vector-like object

broadcast <- function(longer, shorter) {
  return (rep(y, ceiling(length(x) / length(y) ) )[1:length(x)])
}