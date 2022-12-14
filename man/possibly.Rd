% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class_partial_time_uncert_resolvers.R
\name{possibly}
\alias{possibly}
\title{"Possibly" generic for resolving uncertainty}
\usage{
possibly(x, ...)
}
\arguments{
\item{x}{an uncertain object to resolve}

\item{...}{additional paramters used by class-specific functions}
}
\value{
A logical vector indicating whether the partial time comparison is
possibly or definitely true provided any uncertainty represented in the
\code{partial_time} inputs.
}
\description{
"Possibly" generic for resolving uncertainty
}
\seealso{
Other uncert-resolvers: 
\code{\link{definitely}()}
}
\concept{uncert-resolvers}
