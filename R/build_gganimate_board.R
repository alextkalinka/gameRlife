#' build_gganimate_board
#' 
#' Returns a `gganimate` object of the Game of Life board for a given `gameRlife::game_of_life` output using `gganimate` and `gifski`: intended to be viewed in the `RStudio` `Viewer` tab.
#' 
#' @param board_ggplot A object of class `ggplot2` as produced by `gameRlife::build_ggboard`.
#' @param num_gen An integer specifying the number of generations.
#' 
#' @return Used for its side-effect of animating in 
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @importFrom ggplot2 labs
#' @importFrom gganimate transition_manual animate
#' @export
build_gganimate_board <- function(board_ggplot, num_gen){
  am <- board_ggplot +
    ggplot2::labs(title = "Game of Life by John Conway.",
                  subtitle = "Generation: {current_frame}",
                  caption = "(R Implementation by Alex Kalinka)") +
    gganimate::transition_manual(generation)
  return(gganimate::animate(am, nframes = num_gen+1, fps = 3))
}
