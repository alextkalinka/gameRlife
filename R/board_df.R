#' board_df
#' 
#' Returns the board as a data frame containing co-ordinates of the living cells.
#' 
#' @param board An \eqn{n^2} binary matrix with living cells indicated by 1s.
#' @param board_size An integer specifying the size of the 2D array.
#' @param generation A positive integer specifying the number of the focal generation.
#' 
#' @return A data frame containing `row` and `column` columns, as well as the generation number.
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @importFrom dplyr %>% rename mutate
#' @export
board_df <- function(board, board_size, generation){
  msg <- "'board' must be an n^2 binary matrix"
  if(!inherits(board, "matrix")) stop(msg)
  
  # Extract the co-ordinates of living cells.
  df <- as.data.frame(gameRlife::coords_living(board)) %>%
    dplyr::rename(row = V1, col = V2) %>%
    dplyr::mutate(living = as.factor(1)) %>%
    # Added for plotting purposes.
    rbind(data.frame(row = (board_size + 5), col = (board_size + 5), living = NA)) %>%
    dplyr::mutate(generation = generation)
  return(df)
}
