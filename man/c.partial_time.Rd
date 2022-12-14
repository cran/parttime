% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class_partial_time_c.R
\name{c.partial_time}
\alias{c.partial_time}
\title{Concatenate parttimes}
\usage{
\method{c}{partial_time}(...)
}
\arguments{
\item{...}{objects to be concatenated.  All \code{\link[base]{NULL}} entries
    are dropped before method dispatch unless at the very beginning of the
    argument list.}
}
\value{
A \code{partial_time} vector. An error is raised if any other class object
is attempted to be concatenated.
}
\description{
Concatenate parttimes
}
