% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/likelihood.R
\name{negLL.PLB.bins.species}
\alias{negLL.PLB.bins.species}
\title{Calculate the negative log-likelihood of \code{b} for the PLB model, given
species-specific binned data (MLEbins method)}
\usage{
negLL.PLB.bins.species(b, dataBinForLike, n, xmin, xmax)
}
\arguments{
\item{b}{value of \code{b} for which to calculate the negative log-likelihood}

\item{dataBinForLike}{table data frame (tbl_df) where each row is the count in a bin
of a species, and columns (and corresponding mathematical notation in MEPS
Supplementary Material) are:
\itemize{
\item \code{SpecCode}: code for each species, \code{s}
\item \code{wmin}: lower bound of the bin, \verb{w_\\\{sj\\\}} where \code{j} is the bin number
\item \code{wmax}: upper bound of the bin, \verb{w_\\\{s, j+1\\\}}
\item \code{Number}: count in that bin for that species, \verb{d_\\\{sj\\\}}
For each species the first and last bins must be non-empty, i.e.
\verb{w_\\\{s1\\\}, w_\\\{s,J_s +1\\\} > 0}.
}}

\item{n}{total number of counts \verb{n = \\sum_\\\{sj\\\} d_\\\{sj\\\}} over all \code{s} and \code{j}}

\item{xmin}{maximum likelihood estimate for \code{xmin}, \verb{xmin = min_\\\{sj\\\} w_\\\{s, 1\\\}}}

\item{xmax}{maximum likelihood estimate for \code{xmax}, \verb{xmax = max_\\\{sj\\\} w_\\\{s, J_s+1\\\}}}
}
\value{
negative log-likelihood of the parameters given the data
}
\description{
Calculate the negative log-likelihood of \emph{b} for the PLB model,
given binned data where the bins can be different for each species, namely
the MLEbins method derived as equations (S.18) and (S.26) in MEPS paper.
Returns the negative log-likelihood.
Will be called by \code{nlm()} or similar, but \code{xmin} and \code{xmax} will just be estimated
as the min of lowest bin and max of the largest bin (i.e. their MLEs),
no need to do numerically. See Supplementary Material of MEPS paper for derivation, and
the vignettes for example use.
}
\author{
Andrew Edwards
}
