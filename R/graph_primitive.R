as_graph_primitive <- function(.g, ...) {
  UseMethod("as_graph_primitive")
}

#' @importFrom igraph vcount vertex_attr
as_graph_primitive.igraph <- function(.g, ...) {
  .as_df(
    igraph::vertex_attr(.g) %{empty}% list(name = seq_len(igraph::vcount(.g)))
  )
  
}