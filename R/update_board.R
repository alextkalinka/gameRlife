#' update_board
#' 
#' Updates the living and dead cells according to the Game of Life rules.
#' 
#' @param board An \eqn{n^2} binary matrix with living cells indicated by 1s.
#' @param torify Logical indicating whether the board should be wrapped up into a torus to prevent inconsistencies at the edges (defaults to `TRUE`).
#' 
#' @return An updated \eqn{n^2} binary matrix with living cells indicated by 1s.
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @export
update_board <- function(board, torify = TRUE){
  msg <- "'board' must be an n^2 binary matrix"
  if(!inherits(board, "matrix")) stop(msg)
  
  # Matrix with number of living cells surrounding each focal cell.
  nl <- gameRlife::sum_living_neighbours(board, torify)
  bc <- board
  # Apply the rules to update.
  bc[board == 0 & nl == 3] <- 1
  bc[board == 1 & nl < 2] <- 0
  bc[board == 1 & nl > 3] <- 0
  return(bc)
}
