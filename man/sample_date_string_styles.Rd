% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse_to_parttime_matrix.R
\name{sample_date_string_styles}
\alias{sample_date_string_styles}
\title{Find unique forms of inputs}
\usage{
sample_date_string_styles(x)
}
\arguments{
\item{x}{A \code{character} vector of datetime strings}
}
\value{
The indices of the first instance of unique datatime formats
}
\description{
Find unique forms of inputs
}
\examples{
x <- c("2022", "T02:01", "2023", "Y1970", "2021-01", "2024-12")
x[parttime:::sample_date_string_styles(x)]

}
\keyword{internal}
