#' sum_living_neighbours
#' 
#' Returns a matrix containing the number of living neighbours for each cell on the board.
#' 
#' @param board An \eqn{n^2} binary matrix with living cells indicated by 1s.
#' @param torify Logical indicating whether the board should be wrapped up into a torus to prevent inconsistencies at the edges (defaults to `TRUE`).
#' 
#' @return An \eqn{n^2} matrix containing the number of living neighbours that each cell has.
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @importFrom matrixcalc shift.left shift.right shift.up shift.down
#' @export
#' @md
sum_living_neighbours <- function(board, torify = TRUE){
  msg <- "'board' must be an n^2 binary matrix"
  if(!inherits(board, "matrix")) stop(msg)
  
  nc <- ncol(board)
  nr <- nrow(board)
  # Shift the matrix so we can use the '+' operator to produce an n^2 matrix of living neighbour sums.
  # 1. left, right, up, down.
  br <- matrixcalc::shift.right(board, fill = 0)
  bl <- matrixcalc::shift.left(board, fill = 0)
  bu <- matrixcalc::shift.up(board, fill = 0)
  bd <- matrixcalc::shift.down(board, fill = 0)
  # 2. diagonal: left, right, up, down.
  bru <- matrixcalc::shift.up(br, fill = 0)
  blu <- matrixcalc::shift.up(bl, fill = 0)
  brd <- matrixcalc::shift.down(br, fill = 0)
  bld <- matrixcalc::shift.down(bl, fill = 0)
  
  if(torify){
    br[,1] <- board[,nc]
    bl[,nc] <- board[,1]
    bu[nr,] <- board[1,]
    bd[1,] <- board[nr,]
    # Diagonal shifts.
    bru[nr,] <- c(board[1,nc], board[1,-nc])
    bru[,1] <- c(board[-1,nc], board[1,nc])
    blu[nr,] <- c(board[1,-1], board[1,1])
    blu[,nc] <- c(board[-1,1], board[1,1])
    brd[1,] <- c(board[nr,nc], board[nr,-nc])
    brd[,1] <- c(board[nr,nc], board[-nr,nc])
    bld[1,] <- c(board[nr,-1], board[nr,1])
    bld[,nc] <- c(board[nr,1], board[-nr,1])
  }
  return(br + bl + bu + bd + bru + blu + brd + bld)
}
