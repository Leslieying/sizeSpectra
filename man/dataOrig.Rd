% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{dataOrig}
\alias{dataOrig}
\title{Original IBTS dataset downloaded from DATRAS website}
\format{Dataframe with 178,435 rows and 13 columns, which are (I think
automatically named from the DATRAS database, with \code{a} and \code{b} added from Fung et
al. by Julia, though see vignette for units):
\itemize{
\item AphiaID
\item Survey
\item Year
\item Quarter
\item Area
\item Species
\item LngtClas
\item CPUE_number_per_hour
\item Taxonomic.group
\item a
\item b
\item weight_g
\item CPUE_bio_per_hour
}}
\source{
From running \code{data-raw/IBTS-data.R} on the original data file (that
is too big to save in this package).
}
\usage{
dataOrig
}
\description{
Julia Blanchard downloaded this dataset as \code{ibtsQ1cpuelength.RData} (in
November 2015) that contained a dataframe \code{q1}, which has been saved here (in
\code{data-raw/IBTS-data.R}) as \code{dataOrig = tibble::as_tibble(q1)}.
See the MEPS paper for details of the queries she used (I also have some original
code). The DATRAS website is
http://www.ices.dk/marine-data/data-portals/Pages/DATRAS.aspx .
There is now an R package for extracting database at
https://github.com/ices-tools-prod/icesDatras that should probably be used in
future for reproducibility.
The vignette \code{MEPS_IBTS_1} shows how \code{dataOrig} gets simplified (un-needed columns and rows are removed),
column names are renamed, and units are standardised, to give the more useful \code{IBTS_data}.
Dataset included here with permission under ICES Data Policy
http://www.ices.dk/marine-data/Documents/ICES-Data-policy.pdf
and confirmation by ICES Data Officer.
}
\keyword{datasets}
