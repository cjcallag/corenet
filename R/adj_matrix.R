as_adj_matrix <- function(.g, ...) {
  UseMethod("as_adj_matrix")
}

as_adj_matrix.igraph <- function(.g, use_names = TRUE, vert_attr = NULL, edge_attr = NULL, ...) {
  igraph:::get.adjacency.dense
}