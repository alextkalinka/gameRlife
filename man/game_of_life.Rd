% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/game_of_life.R
\name{game_of_life}
\alias{game_of_life}
\title{game_of_life}
\usage{
game_of_life(seed, num_gens, board_size = 50, animate = TRUE, torify = TRUE)
}
\arguments{
\item{seed}{An nx2 matrix containing the co-ordinates of \code{n} seeds for the game.}

\item{num_gens}{An integer specifying the number of generations of evolution in the game.}

\item{board_size}{An integer specifying the size of the 2D array. Defaults to 50.}

\item{animate}{Logical indicating whether to animate the game (defaults to \code{TRUE}).}

\item{torify}{Logical indicating whether the board should be wrapped up into a torus to prevent inconsistencies at the edges (defaults to \code{TRUE}).}
}
\value{
An object of class \code{gameRlife}. Can be used for the side-effect of animating the cellular automata as they evolve.
}
\description{
Run John Conway's cellular automata Game of Life.
}
\author{
Alex Kalinka, \email{alex.t.kalinka@gmail.com}
}
