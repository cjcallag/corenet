seq_verts <- function(.g) {
  seq_len(vert_count(.g))
}

seq_edges <- function(.g) {
  seq_len(edge_count(.g))
}