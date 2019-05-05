#' How many vertices are there?
#' 
#' @template g-param
#' @template bknapp-author
#' 
#' @export
n_verts <- function(.g) {
  UseMethod("n_verts")
}


#' @rdname n_verts
#' 
#' @importFrom igraph vcount
#' 
#' @export
n_verts.igraph <- function(.g) {
  vcount(.g)
}

#' @rdname n_verts
#' 
#' @export
n_verts.network <- function(.g) {
  .g[["gal"]][["n"]]
}


#' How many edges are there?
#' 
#' @template g-param
#' @template bknapp-author
#' 
#' @export
n_edges <- function(.g) {
  UseMethod("n_edges")
}

#' @rdname n_edges
#' 
#' @importFrom igraph ecount
#' 
#' @export
n_edges.igraph <- function(.g) {
  ecount(.g)
}

#' @importFrom network network.edgecount
n_edges.network <- function(.g) {
  network.edgecount(.g)
}

#' Are `.g`'s edges directed?
#' 
#' @template g-param
#' @template bknapp-author
#' 
#' @export
is_dir <- function(.g) {
  UseMethod("is_dir")
}

#' @rdname is_dir
#' 
#' @importFrom igraph is_directed
#' 
#' @export
is_dir.igraph <- function(.g) {
  is_directed(.g)
}

#' @rdname is_dir
#' 
#' @export
is_dir.network <- function(.g) {
  isTRUE(.g[["gal"]][["directed"]])
}

