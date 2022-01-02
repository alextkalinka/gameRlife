#' animate_ggboard
#' 
#' Animates the Game of Life board for a given `gameRlife::game_of_life` output using `gganimate` and `gifski`: intended to be viewed in the `RStudio` `Viewer` tab.
#' 
#' @param board_ggplot A object of class `ggplot2` as produced by `gameRlife::build_ggboard`.
#' 
#' @return Used for its side-effect of animating in 
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @importFrom ggplot2 labs
#' @importFrom gganimate transition_time
#' @export
animate_ggboard <- function(board_ggplot){
  am <- board_ggplot +
    ggplot2::labs(title = "Game of Life. Generation: {frame_time}") +
    gganimate::transition_time(generation)
  print(am)
}
