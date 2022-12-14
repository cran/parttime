#' Test whether a partial_time object is incomplete
#'
#' @param x a partial_time object to test for incompleteness
#' @param ... additional arguments unused
#' @param components components to include in testing
#'
#' @return A logical vector indicating whether each element of a `partial_time`
#'   has any missing datetime fields.
#'
#' @export
has_partial <- function(x, ..., components = c("year", "month", "day", "hour",
    "min", "sec", "secfrac", "tzhour", "tzmin")) {

  dots <- as.list(match.call())[-1]
  dots <- as.character(dots[!names(dots) %in% names(formals())])

  if (length(dots)) components <- dots

  match.arg(
    components,
    c("year", "month", "day", "hour", "min", "sec", "secfrac", "tzhour", "tzmin"),
    several.ok = TRUE
  )

  apply(
    vctrs::field(x, "pttm_mat")[, components, drop = FALSE],
    1,
    function(row) any(is.na(row))
  )
}



#' Test whether a partial_time object's date components are incomplete
#'
#' @inheritParams has_partial
#'
#' @return A logical vector indicating whether each element of a `partial_time`
#'   has any missing date fields.
#'
#' @export
has_partial_date <- function(x) {
  has_partial(x, components = c("year", "month", "day", "tzhour", "tzmin"))
}



#' Test whether a partial_time object's time components are incomplete
#'
#' @inheritParams has_partial
#'
#' @return A logical vector indicating whether each element of a `partial_time`
#'   has any missing time fields.
#'
#' @export
has_partial_time <- function(x) {
  has_partial(x, components = c("hour", "min", "sec", "secfrac", "tzhour",
      "tzmin"))
}
