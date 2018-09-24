#' broadcasts a shorter vector-like object into a vector of equal length as a longer vector-like object
#' @param longer longer vector-like object
#' @param shorter shorter vector-like object
#'
#'
broadcast <- function(longer, shorter) {
  return (rep(shorter, ceiling(length(longer) / length(shorter) ) )[1:length(longer)])
}
