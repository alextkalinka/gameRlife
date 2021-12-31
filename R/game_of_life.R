#' game_of_life
#' 
#' Run the cellular automata Game of Life.
#' 
#' @param seed An nx2 matrix containing the co-ordinates of `n` seeds for the game.
#' @param num_gens An integer specifying the number of generations of evolution in the game.
#' @param board_size An integer specifying the size of the 2D array. Defaults to 50.
#' @param animate Logical indicating whether to animate the game (defaults to `TRUE`).
#' 
#' @return Each generation of the game is returned as a data frame that contains co-ordinates for only the living cells. Can be used for the side-effect of animating the cellular automata as they evolve.
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @export
game_of_life <- function(seed, num_gens, board_size = 50, animate = TRUE){
  board <- matrix(0, board_size, board_size)
  board[seed[,1], seed[,2]] <- 1
  bdf <- NULL
  for(i in 1:num_gens){
    
  }
  
}
