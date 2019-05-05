#' Get all vertex attribute names.
#' 
#' @template g-param
#' @template dots-unused-param
#' @template bknapp-author
#' 
#' @export
vert_attr_names <- function(.g, ...) {
  UseMethod("vert_attr_names")
}

#' @rdname vert_attr_names
#' 
#' @importFrom igraph vertex_attr_names
#' 
#' @export
vert_attr_names.igraph <- function(.g, ...) {
  vertex_attr_names(.g)
}

#' @rdname vert_attr_names
#' 
#' @export
vert_attr_names.network <- function(.g, ...) {
  out <- unique(unlist(lapply(.g[["val"]], names), use.names = FALSE))
  out[out != "na"]
}



#' Get the values of a vertex attribute.
#' 
#' @template g-param
#' @template vert_attr_name-param
#' @template dots-unused-param
#' @template bknapp-author
#' 
#' @export
get_vert_attr <- function(.g, .vert_attr_name, ...) {
  UseMethod("get_vert_attr")
}

#' @rdname get_vert_attr
#' 
#' @importFrom igraph vertex_attr
#' 
#' @export
get_vert_attr.igraph <- function(.g, .vert_attr_name, ...) {
  vertex_attr(graph = .g, name = .vert_attr_name)
}

#' @rdname get_vert_attr
#' 
#' @export
get_vert_attr.network <- function(.g, .vert_attr_name, ...) {
  init <- lapply(.g[["val"]], function(x) x[[.vert_attr_name]] %||% NA)
  
  unlist(init, recursive = FALSE, use.names = FALSE)
}



#' Get vertex names, following the conventions of `.g`'s class.
#' 
#' @template g-param
#' @template vert_attr_name-param
#' @template dots-unused-param
#' @template bknapp-author
#' 
#' @export
get_vert_names <- function(.g, ...) {
  get_vert_attr(.g, vert_name_attr(.g)) %{}% seq_verts(.g)
}

vert_name_attr <- function(.g) {
  UseMethod("vert_name_attr")
}
vert_name_attr.igraph <- function(.g) {
  "name"
}
vert_name_attr.network <- function(.g) {
  "vertex.names"
}


