#' coords_living
#' 
#' Returns the board co-ordinates of all the living cells.
#' 
#' @param board An \eqn{n^2} binary matrix with living cells indicated by 1s.
#' 
#' @return An nx2 matrix with row co-ordinates in the first column and column co-ordinates in the second.
#' @author Alex Kalinka, \email{alex.t.kalinka@@gmail.com}
#' @export
coords_living <- function(board){
  msg <- "'board' must be an n^2 binary matrix"
  if(!inherits(board, "matrix")) stop(msg)
  
  coords <- apply(board, 1, function(x) which(x == 1))
  ret <- NULL
  for(i in 1:length(coords)){
    ret <- rbind(ret, cbind(rep(i,length(coords[[i]])), coords[[i]]))
  }
  return(ret)
}
