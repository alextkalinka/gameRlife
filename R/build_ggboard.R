#' build_ggboard
#' 
#' Creates a `ggplot2` object of the Game of Life board for a data frame of 1 or more generations.
#' 
#' @param board_DF A data frame containing the co-ordinates of living cells, as produced by `gameRlife::board_df`.
#' 
#' @return An object of class `ggplot`.
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @importFrom dplyr %>%
#' @importFrom ggplot2 ggplot aes geom_tile
#' @export
build_ggboard <- function(board_DF){
  pl <- board_DF %>%
    ggplot2::ggplot(ggplot2::aes(col, row))
  
}
