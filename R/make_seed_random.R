#' make_seed_random
#' 
#' Creates a random seed for `gameRlife::game_of_life` for a given board size and proportion of living cells.
#' 
#' @param board_size An integer specifying the size of the 2D array.
#' @param proportion_living A real number in range (0,1). Defaults to 0.1.
#' 
#' @return A matrix with `proportion_living`*`board_size^2` rows and 2 columns providing the co-ordinates of the random seed living cells (rows in the first column, columns in the second).
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @export
make_seed_random <- function(board_size, proportion_living = 0.1){
  num_samp <- (board_size^2)*proportion_living
  ret <- cbind(sample(1:board_size, num_samp, replace = T),
               sample(1:board_size, num_samp, replace = T))
  return(ret[!duplicated(ret),])
}
