#' get_neighbours
#' 
#' Returns the row-column co-ordinates of all 1-square neighbours of a focal cell.
#' 
#' @param row An integer specifying the row co-ordinate of the focal cell.
#' @param col An integer specifying the column co-ordinate of the focal cell.
#' @param array_max An integer specifying the maximum size of the array.
#' 
#' @return An 8x2 matrix in which the first column contains row co-oridnates and the second column contains column co-ordinates.
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @export
get_neighbours <- function(row, col, array_max){
  ncols <- c(rep(col - 1, 3), rep(col, 2), rep(col + 1, 3))
  nrows <- c(rep(row - 1, 3), rep(row, 2), rep(row + 1, 3))
  nrows <- nrows[c(1,4,6,2,7,2,5,8)]
  ret <- cbind(nrows, ncols)
  ## Wrapping co-ordinates around a torus.
  ret <- torify_coordinates(ret, array_max)
  return(ret)
}
