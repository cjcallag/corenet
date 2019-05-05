test_that("`vert_attr_names()` works", {
  expect_equal(
    vert_attr_names(jemmah_islamiyah_ig),
    "name"
  )
  
  expect_equal(
    vert_attr_names(jemmah_islamiyah_nw),
    "vertex.names"
  )
})


test_that("`get_vert_attr()` works", {
  target <- c("MUKLAS", "AMROZI", "IMRON", "SAMUDRA", "DULMATIN", "IDRIS", 
              "MUBAROK", "AZAHARI", "GHONI", "ARNASAN", "RAUF", "OCTAVIA", 
              "HIDAYAT", "JUNAEDI", "PATEK", "FERI", "SARIJO")
  
  expect_equal(
    get_vert_attr(jemmah_islamiyah_ig, "name"),
    target
  )
  
  expect_equal(
    get_vert_attr(jemmah_islamiyah_nw, "vertex.names"),
    target
  )
})

test_that("`get_vert_names()` works", {
  target <- c("MUKLAS", "AMROZI", "IMRON", "SAMUDRA", "DULMATIN", "IDRIS", 
              "MUBAROK", "AZAHARI", "GHONI", "ARNASAN", "RAUF", "OCTAVIA", 
              "HIDAYAT", "JUNAEDI", "PATEK", "FERI", "SARIJO")
  
  expect_equal(
    get_vert_names(jemmah_islamiyah_ig),
    target
  )
  
  expect_equal(
    get_vert_names(jemmah_islamiyah_nw),
    target
  )
})