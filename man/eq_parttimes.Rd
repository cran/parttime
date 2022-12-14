% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class_partial_time_ops.R
\name{eq_parttimes}
\alias{eq_parttimes}
\title{Equal comparison handler for partial_time objects}
\usage{
eq_parttimes(generic, e1, e2)
}
\arguments{
\item{generic}{the generic operator selected}

\item{e1}{objects}

\item{e2}{objects}
}
\description{
Equal comparison handler for partial_time objects
}
\examples{
x <- as.parttime(c("2019", "2018-01-04", NA, "2011"))
y <- as.parttime(c("2019", "2018-01-03", NA, "2010-01"))

x == y

}
\keyword{internal}
