#' build_ggboard
#' 
#' Creates a `ggplot2` object of the Game of Life board for a data frame of 1 or more generations.
#' 
#' @param board_DF A data frame containing the co-ordinates of living cells, as produced by `gameRlife::board_df`.
#' @param board_size An integer specifying the size of the 2D array.
#' 
#' @return An object of class `ggplot`.
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @importFrom dplyr %>%
#' @importFrom ggplot2 ggplot aes geom_tile theme xlim ylim element_rect element_blank scale_y_reverse
#' @export
build_ggboard <- function(board_DF, board_size){
  pl <- board_DF %>%
    ggplot2::ggplot(ggplot2::aes(col, row, fill = living)) +
    ggplot2::geom_tile(na.rm = T, show.legend = F, fill = "black", color = "white") +
    ggplot2::theme(legend.position = "none",
                   axis.title.x = ggplot2::element_blank(),
                   axis.title.y = ggplot2::element_blank(),
                   axis.text.x = ggplot2::element_blank(),
                   axis.text.y = ggplot2::element_blank(),
                   axis.ticks = ggplot2::element_blank(),
                   panel.background = ggplot2::element_rect(fill="white", colour="white"),
                   panel.border = element_rect(colour = "black", fill=NA, size=1)) +
    ggplot2::xlim(0.5, board_size + 0.5) +
    ggplot2::scale_y_reverse(limits = c(board_size + 0.5, 0.5))
  return(pl)
}
