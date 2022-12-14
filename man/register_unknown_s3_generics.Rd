% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz.R
\name{register_unknown_s3_generics}
\alias{register_unknown_s3_generics}
\title{Export S3 generics only if as-of-yet unknown}
\usage{
register_unknown_s3_generics(fns)
}
\description{
S3 generics are often (unfortunately) tethered to specific packages. In order
to provide a functional generic that can dispatch on parttime classes, while
also preventing our generics from masking generics in other packages on
attach, we want to only export our generics if there is no generic with that
name.
}
\keyword{internal}
