# parttime 0.1.2

* Minor updates to documentation to handle new `R CMD check` `NOTE`s. 

# parttime 0.1.1

* Update formals for `vctrs` generic methods to reflect changes in the `vctrs`
  package.

# parttime 0.1.0

* Reworked `pmax` and `pmin` handling to address edge case failure modes.
  Performance may be impacted. If you identify performance regressions that
  impact your work, please file a ticket. (#35, @dgkf)

* Renamed `parse_iso8601` to `parse_iso8601_datetime` to prepare for
  introduction of an alternative parser for iso8601 timespans. (#38, @dgkf)

* New format added for CDISC-style datetime strings. Can be used via
  `as.parttime(..., format = parse_cdisc_datetime)`. (#38, @dgkf)

* `as.parttime` will now, by default, show warnings when some strings fail to
  parse into the provided format. Behavior can be configured using the new
  `on.na` parameter. (#36, @dgkf)

* extends `lubridate`-style accessor and assignment helpers, such as `year()`
  and `year()<-`. Unfortuntely, many are provided as S4 generics, and may be
  masked by other packages that extend these generics. Some generic-like
  functions are provided only as non-generic forms in `lubridate` and will
  always be masked, such as `tz()`. (#14, @dgkf).

* added `format` parameter to `as.parttime`, allowing for custom regular
  expressions or functions to be used to parse non-iso formats. If other
  established standards are regularly needeed, they could be included with the
  package. (#13, @dgkf)

* added `res` ("resolution") parameter to the `impute_*` family of functions,
  allowing for only some field up until the provided resolution to be imputed.
  With this, also added `impute_date_*` alternatives which default to imputing
  to a `"day"` resolution. (#12, @dgkf)

* rename `is_partial_*` to `has_partial_*` to avoid ambiguity with class checks

* removed some deprecated `pillar` interfaces

* bring package up-to-speed with `vctrs` package changes from last few years

* fixed subset assignment operators [<- and [[<- 

* improved imputation as to not introduce dates that aren't viable for the given
  month

# parttime 0.0.1

* initial release including loose parsing of ISO 8601 datetime formats using
parsedate

* tibble column formatting using pillar

* coersion to and from POSIX, Date and character
