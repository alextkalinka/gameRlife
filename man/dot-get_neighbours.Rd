% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_neighbours.R
\name{.get_neighbours}
\alias{.get_neighbours}
\title{get_neighbours}
\usage{
.get_neighbours(row, col, array_max)
}
\arguments{
\item{row}{An integer specifying the row co-ordinate of the focal cell.}

\item{col}{An integer specifying the column co-ordinate of the focal cell.}

\item{array_max}{An integer specifying the maximum size of the array.}
}
\value{
An 8x2 matrix in which the first column contains row co-oridnates and the second column contains column co-ordinates.
}
\description{
Returns the row-column co-ordinates of all 1-square neighbours of a focal cell.
}
\author{
Alex Kalinka, \email{alex.t.kalinka@gmail.com}
}
