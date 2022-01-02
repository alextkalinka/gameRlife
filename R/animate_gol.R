#' animate_gol
#' 
#' Animates a `gameRlife` object.
#' 
#' @param gol An object of class `gameRlife` as produced by `gameRlife::game_of_life`.
#' @param from An integer specifying the generation to start at. If `NULL` (default) start at generation 0.
#' @param to An integer specifying the generation to run to. If `NULL` (default) run until the last generation.
#' 
#' @return A GIF animation to be viewed in the `RStudio` `Viewer` tab.
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @importFrom dplyr filter between
#' @export
animate_gol <- function(gol, from = NULL, to = NULL){
  if(!inherits(gol, "gameRlife")) stop("'gol' must be an object of class 'gameRlife'")
  
  if(!is.null(from) || !is.null(to)){
    if(is.null(from)) from <- 0
    if(is.null(to)) to <- max(gol$board_DF$generation)
    num_gen <- to - from
    bdf <- gol$board_DF %>%
      dplyr::filter(dplyr::between(generation, from, to))
    # Build ggplot2 object.
    gpl <- gameRlife::build_ggboard(bdf, gol$board_size)
    # Animate.
    gan <- gameRlife::build_gganimate_board(gpl, num_gen)
    gol$board_gganimate <- gan
  }
  print(gol$board_gganimate)
}
