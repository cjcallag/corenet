.is_empty <- function(.x) {
  length(.x) == 0L
}

.is_null <- function(.x) {
  identical(.x, NULL)
}

.is_na <- function(.x) {
  is.na(.x)
}

`%{}%` <- function(.lhs, .rhs) {
  if (.is_empty(.lhs)) return(.rhs)
  .lhs
}

`%{NULL}%` <- function(.lhs, .rhs) {
  if (.is_null(.lhs)) return(.rhs)
  .lhs
}

`%||%` <- `%{NULL}%`

`%{NA}%` <- function(.lhs, .rhs) {
  stopifnot(typeof(.lhs) == typeof(.rhs))
  if (.is_na(.lhs)) return(.rhs)
  .lhs
}

.is_named <- function(.x, ...) {
  !.is_null(names(.x))
}

.as_df <- function(.x,...) {
  stopifnot(.is_named(.x))
  list_cols <- vapply(.x, is.recursive, logical(1L))
  .x[list_cols] <- lapply(.x[list_cols], I)
  
  out <- as.data.frame(.x, stringsAsFactors = FALSE)
  out[list_cols] <- lapply(out[list_cols], `class<-`, "list")

  out
}
