% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class_timespan_coercion.R
\name{vec_cast.timespan.character}
\alias{vec_cast.timespan.character}
\title{Cast partial time to timespan, representing uncertainty as a range}
\usage{
\method{vec_cast}{timespan.character}(x, to, ..., format = parse_iso8601_datetime_as_timespan)
}
\arguments{
\item{x}{Vectors to cast.}

\item{to}{Type to cast to. If \code{NULL}, \code{x} will be returned as is.}

\item{...}{For \code{vec_cast_common()}, vectors to cast. For
\code{vec_cast()}, \code{vec_cast_default()}, and \code{vec_restore()}, these
dots are only for future extensions and should be empty.}

\item{format}{a \code{function} or \code{character} value. If a
\code{function}, it should accept a character vector and return a matrix of
parttime components. If a \code{character} it should provide a regular
exprssion which contains capture groups for each of the parttime
components.  See \link{parse_to_parttime_matrix}'s \code{regex} parameter
for more details.}
}
\value{
A \code{partial_timespan} vector
}
\description{
Cast partial time to timespan, representing uncertainty as a range
}
