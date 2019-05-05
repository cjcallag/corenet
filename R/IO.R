#' @template bknapp-author
#' 
#' @export
read_adj_mat <- function(.path, .delim = ",", .directed = TRUE, .loops = FALSE) {
  init <- strsplit(readLines(.path), .delim)
  
  out <- do.call(rbind, lapply(init[-1L], function(x) x[-1L]))
  storage.mode(out) <- "numeric"
  
  dimnames(out) <- list(
    vapply(init, function(x) x[[1L]], character(1L))[-1L],
    init[[1L]][-1L]
  )
  
  if (!.loops) {
    diag(out) <- 0
  }
  
  if (!.directed) {
    out[lower.tri(out)] = t(out)[lower.tri(out)]
  }
  
  out
}
