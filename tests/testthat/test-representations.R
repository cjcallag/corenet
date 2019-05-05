test_that("`get_el()` works", {
  index_el <- structure(
    c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 3L, 
      3L, 3L, 3L, 3L, 3L, 3L, 3L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 
      4L, 4L, 4L, 5L, 5L, 5L, 5L, 5L, 5L, 6L, 6L, 6L, 6L, 6L, 8L, 8L, 
      8L, 8L, 9L, 9L, 9L, 10L, 10L, 10L, 10L, 11L, 11L, 11L, 12L, 12L, 
      13L, 15L, 15L, 16L, 2L, 3L, 4L, 5L, 6L, 8L, 9L, 15L, 17L, 4L, 
      6L, 7L, 4L, 5L, 6L, 8L, 9L, 15L, 16L, 17L, 5L, 6L, 7L, 8L, 9L, 
      10L, 11L, 12L, 13L, 14L, 15L, 17L, 6L, 8L, 9L, 15L, 16L, 17L, 
      7L, 8L, 9L, 15L, 17L, 9L, 15L, 16L, 17L, 15L, 16L, 17L, 11L, 
      12L, 13L, 14L, 12L, 13L, 14L, 13L, 14L, 14L, 16L, 17L, 17L), 
    .Dim = c(63L, 2L)
  )
  
  
  expect_equal(
    index_el, get_el(jemmah_islamiyah_ig)
  )

  expect_equal(
    index_el, get_el(jemmah_islamiyah_nw)
  )
})


test_that("`get_el()` works", {
  name_el <- structure(
    c("MUKLAS", "MUKLAS", "MUKLAS", "MUKLAS", "MUKLAS", 
      "MUKLAS", "MUKLAS", "MUKLAS", "MUKLAS", "AMROZI", "AMROZI", "AMROZI", 
      "IMRON", "IMRON", "IMRON", "IMRON", "IMRON", "IMRON", "IMRON", 
      "IMRON", "SAMUDRA", "SAMUDRA", "SAMUDRA", "SAMUDRA", "SAMUDRA", 
      "SAMUDRA", "SAMUDRA", "SAMUDRA", "SAMUDRA", "SAMUDRA", "SAMUDRA", 
      "SAMUDRA", "DULMATIN", "DULMATIN", "DULMATIN", "DULMATIN", "DULMATIN", 
      "DULMATIN", "IDRIS", "IDRIS", "IDRIS", "IDRIS", "IDRIS", "AZAHARI", 
      "AZAHARI", "AZAHARI", "AZAHARI", "GHONI", "GHONI", "GHONI", "ARNASAN", 
      "ARNASAN", "ARNASAN", "ARNASAN", "RAUF", "RAUF", "RAUF", "OCTAVIA", 
      "OCTAVIA", "HIDAYAT", "PATEK", "PATEK", "FERI", "AMROZI", "IMRON", 
      "SAMUDRA", "DULMATIN", "IDRIS", "AZAHARI", "GHONI", "PATEK", 
      "SARIJO", "SAMUDRA", "IDRIS", "MUBAROK", "SAMUDRA", "DULMATIN", 
      "IDRIS", "AZAHARI", "GHONI", "PATEK", "FERI", "SARIJO", "DULMATIN", 
      "IDRIS", "MUBAROK", "AZAHARI", "GHONI", "ARNASAN", "RAUF", "OCTAVIA", 
      "HIDAYAT", "JUNAEDI", "PATEK", "SARIJO", "IDRIS", "AZAHARI", 
      "GHONI", "PATEK", "FERI", "SARIJO", "MUBAROK", "AZAHARI", "GHONI", 
      "PATEK", "SARIJO", "GHONI", "PATEK", "FERI", "SARIJO", "PATEK", 
      "FERI", "SARIJO", "RAUF", "OCTAVIA", "HIDAYAT", "JUNAEDI", "OCTAVIA", 
      "HIDAYAT", "JUNAEDI", "HIDAYAT", "JUNAEDI", "JUNAEDI", "FERI", 
      "SARIJO", "SARIJO"),
    .Dim = c(63L, 2L)
  )
  
  expect_equal(
    name_el, as_edge_list(jemmah_islamiyah_ig)
  )
  
  expect_equal(
    name_el, as_edge_list(jemmah_islamiyah_nw)
  )
})
