#' "Definitely" generic for resolving uncertainty
#'
#' @param x an uncertain object to resolve
#' @param ... additional paramters used by class-specific functions
#'
#' @return A logical vector indicating whether the partial time comparison is
#'   possibly or definitely true provided any uncertainty represented in the
#'   `partial_time` inputs.
#'
#' @family uncert-resolvers
#'
#' @export
definitely <- function(x, ...) {
  UseMethod("definitely")
}



#' Determine whether a partial_time logical matrix is definitely TRUE
#'
#' @param x a partial_time_logical matrix for coersion
#' @param by the resolution of assessment, a column or index
#' @param ... additional arguments unused
#'
#' @return A logical vector indicating whether the partial time comparison is
#'   possibly or definitely true provided any uncertainty represented in the
#'   `partial_time` inputs.
#'
#' @examples
#'
#' x <- as.parttime(c("", "2019", "2018-01-02"))
#' y <- as.parttime(c("2018", "2019-02", "2018-02"))
#'
#' definitely(x != y)
#' definitely(x != y, by = "year")
#'
#' @export
definitely.partial_time_logical <- function(x,
    by = ncol(attr(x, "pttm_lgl")), ...) {

  res <- validate_res(x, by)
  x_na <- apply(is.na(attr(x, "pttm_lgl")), 1, all)
  out <- unname(attr(x, "pttm_lgl")[, res])
  out[!x_na & is.na(out)] <- FALSE
  out
}



#' "Possibly" generic for resolving uncertainty
#'
#' @inheritParams definitely
#' @inherit definitely return
#'
#' @family uncert-resolvers
#'
#' @export
possibly <- function(x, ...) {
  UseMethod("possibly")
}



#' Determine whether a partial_time logical matrix is possibly TRUE
#'
#' @inheritParams definitely.partial_time_logical
#' @inherit definitely return
#'
#' @examples
#'
#' x <- as.parttime(c("",     "2019-02",    "2019-01-02"))
#' y <- as.parttime(c("2018", "2019-02-01", "2018"))
#'
#' possibly(x != y)
#' possibly(x != y, by = "month")
#'
#' @export
possibly.partial_time_logical <- function(x,
    by = ncol(attr(x, "pttm_lgl")), ...) {

  res <- validate_res(x, by)
  x_na <- apply(is.na(attr(x, "pttm_lgl")), 1, all)
  out <- unname(attr(x, "pttm_lgl")[, res])
  out[!x_na & is.na(out)] <- TRUE
  out
}
