#' Get the edge list representation of a graph as a matrix.
#' 
#' @template g-param
#' @template vert_attr_name-param
#' @template bknapp-author
#' 
#' @export
as_edge_list <- function(.g, .use_names = TRUE, .vert_attr_name = NULL, ...) {
  stopifnot(is.logical(.use_names))
  stopifnot(.is_null(.vert_attr_name) || is.character(.vert_attr_name))
  
  if (!.is_null(.vert_attr_name)) {
    fill <- get_vert_attr(.g, .vert_attr_name)
  } else if (.use_names) {
    fill <- get_vert_names(.g)
  } else {
    fill <- NULL
  }

  out <- get_el(.g)

  if (.is_null(fill)) {
    return(out)
  }

  matrix(fill[out], ncol = 2L)
}



get_el <- function(.g) {
  UseMethod("get_el")
}

#' @importFrom igraph as_edgelist
get_el.igraph <- function(.g) {
  as_edgelist(graph = .g, names = FALSE)
}

get_el.network <- function(.g) {
  col1 <- vapply(.g[["mel"]], function(x) x[["outl"]], numeric(1L))
  col2 <- vapply(.g[["mel"]], function(x) x[["inl"]],  numeric(1L))

  if (is_directed(.g)) {
    out <- cbind(col1, col2, deparse.level = 0)
  } else {
    out <- cbind(col2, col1, deparse.level = 0)
  }
  out
}




