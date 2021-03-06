% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fitting.R
\name{eightMethods.count}
\alias{eightMethods.count}
\title{Compute exponents for the IBTS dataset using all eight methods, explicitly
using the counts which can be non-integer.}
\usage{
eightMethods.count(data = data, oneYear = 1980, figName = "eightMCnt")
}
\arguments{
\item{data}{local data frame that has a unique row for every combination of
\code{Year}, \code{SpecCode} and \code{LngtClass}. The \code{Number} column is  the number of
observed individuals of that species in that length class in that
year. \code{bodyMass} is the body mass representative of such an individual, as
calculated previously by \code{LWa * LngtClass ^ LWb}.}

\item{oneYear}{the year of data to use, from that in the multiple years
contained in data}

\item{figName}{figure name, will get appended by \code{-Year} for each year, to create
a \code{.png} plot for each year.}
}
\value{
data frame with one row for each method, with columns:
\itemize{
\item \code{Year}
\item \code{Method}
\item \code{b} (estimate of \emph{b} from that method)
\item \code{confMin} (lower end of 95\\% confidence interval of \emph{b} for that method)
\item \code{confMax} (upper end of 95\\% confidence interval of \emph{b} for that method).
a .png figure \code{paste(figName, "-", oneYear, ".png")} of the fits for each of the eight methods
}
}
\description{
Compute exponents for the IBTS dataset using all eight methods, explicitly
using the counts (number of each bodyMass), which can be non-integer.
}
\details{
In \code{eightMethods()}, had to expand data to get a vector, \code{x}, of individual
fish sizes (lengths or weights), which is how the original methods functions
are written.
Now adding explicit methods here, such as
\code{Llin.method.counts()}, to deal explicitly with counts, and that
should also work for non-integer counts. For integer
counts, the original expansion to give \code{x} should give the same results.
}
\author{
Andrew Edwards
}
