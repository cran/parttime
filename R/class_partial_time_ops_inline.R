`%--%` <- function(start, end) {
  UseMethod("%--%")
}



`%--%.partial_time` <- function(start, end) {
  UseMethod("%--%.partial_time", end)
}



`%--%.partial_time.partial_time` <- function(start, end) {
  # return timespan
}



`%--%.partial_time.parttime_interval` <- function(start, end) {
  # return timespan
}
