#' torify_coordinates
#' 
#' Wraps a grid array into a torus at the edges.
#' 
#' @param coords An 8x2 matrix of co-ordinates.
#' @param array_max An integer specifying the maximum size of the array.
#' 
#' @return An 8x2 matrix in which the first column contains row co-oridnates and the second column contains column co-ordinates.
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @export
.torify_coordinates <- function(coords, array_max){
  # 1. adjust rows.
  coords[coords[,1] == 0,1] <- array_max
  coords[coords[,1] > array_max,1] <- 1
  # 2. adjust columns.
  coords[coords[,2] == 0,2] <- array_max
  coords[coords[,2] > array_max,2] <- 1
  return(coords)
}
