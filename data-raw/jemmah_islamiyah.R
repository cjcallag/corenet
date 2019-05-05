library(stringr)

# get data =====================================================================
target_url <- "https://sites.google.com/site/ucinetsoftware/datasets/covert-networks/jemaahislamiyahkoschade/Jemaah%20Islamiyah%20Koschade%20CSV.zip?attredirects=0&d=1"

temp_file <- tempfile()
temp_dir <- tempdir()

download.file(target_url, destfile = temp_file, mode = "wb")

unzip(temp_file, exdir = temp_dir)

# build adj_mat ================================================================

jemmah_islamiyah_adj_mat <- dir(temp_dir, recursive = TRUE, 
                                full.names = TRUE) %>% 
  str_subset("CSV/JI_KOSCHADE\\.csv$") %>% 
  corenet::read_adj_mat(.directed = FALSE)

# build {igraph} ===============================================================

jemmah_islamiyah_ig <- jemmah_islamiyah_adj_mat %>% 
  igraph::graph_from_adjacency_matrix(mode = "undirected", weighted = TRUE)

ig_adj_mat <- igraph::as_adjacency_matrix(jemmah_islamiyah_ig, 
                                          sparse = FALSE,
                                          attr = "weight")

stopifnot(isTRUE(all.equal(jemmah_islamiyah_adj_mat, ig_adj_mat)))

# build {network} ==============================================================

jemmah_islamiyah_nw <- jemmah_islamiyah_adj_mat %>% 
  network::as.network.matrix(directed = FALSE, ignore.eval = FALSE, 
                             names.eval = "weight" )

nw_adj_mat <- network::as.matrix.network(jemmah_islamiyah_nw,
                                         attrname =  "weight")

stopifnot(isTRUE(all.equal(jemmah_islamiyah_adj_mat, nw_adj_mat)))

# save RDAs ====================================================================
usethis::use_data(jemmah_islamiyah_adj_mat)
usethis::use_data(jemmah_islamiyah_ig)
usethis::use_data(jemmah_islamiyah_nw)
