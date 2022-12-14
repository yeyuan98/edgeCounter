% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{makeGRanges}
\alias{makeGRanges}
\title{Simple wrapper for making GRanges}
\usage{
makeGRanges(df, seqnames.default = "chr2L")
}
\arguments{
\item{df}{A tibble/data.frame object with at least two columns: start, end.
Optionally provide seqnames (otherwise will take default value)
Optionally provide strand (otherwise no strand information, i.e., '*')}

\item{seqnames.default}{What value should seqnames take
if \code{is.null(df$seqnames)}.
This is restricted to length = 1 character vector.}
}
\value{
A GRanges object
}
\description{
\code{makeGRanges()} makes an artificial GRanges based
on user input. Useful for testing purposes and vignette building.
}
\examples{
makeGRanges(
    tibble::tribble(
        ~start, ~end, ~seqnames,
        1, 100, "chr2L",
        80, 120, "chr2L",
        100, 300, "chrX"
    )
)

makeGRanges(
    tibble::tribble(
        ~start, ~end,
        1, 100,
        80, 120,
        100, 300
    )
)

}
