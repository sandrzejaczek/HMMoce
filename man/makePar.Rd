% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makePar.r
\name{makePar}
\alias{makePar}
\title{\code{makePar} gets parameters for subsequent filter/smoother}
\usage{
makePar(migr.spd, grid, L.arr, p.guess = c(0.7, 0.8), calcP = FALSE)
}
\arguments{
\item{migr.spd}{is numeric input to \code{calc.param}}

\item{grid}{is a grid output by \code{resample.grid} that corresponds to the
extent and resolution of L.arr (below).}

\item{L.arr}{is the likelihood array used for state switch probability
calculation (see \code{expmax}). This is typically the L.mle array returned
from \code{make.L} because it's typically more coarse (and thus faster)
than the higher-resolution L array.}

\item{p.guess}{is vector of length 2 indicating probability of staying in
states 1 and 2, respectively}

\item{calcP}{is logical indicating whether to use \code{expmax} to calculate
state-switching probabilities}
}
\value{
list of parameters including movement kernels (K1, K2) and switch
  probability (P.final)
}
\description{
Function builds movement kernels for 2 different behavior states and
calculates, if desired, switching probability using an expectation
maximization routine
}
\examples{
\dontrun{
par0 <- makePar(migr.spd=2, grid=g.mle, L.arr=L.mle, p.guess=c(.9,.9), calcP=T)
}
      
}
