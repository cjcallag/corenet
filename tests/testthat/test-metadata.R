test_that("`n_verts()` works", {
  expect_equal(
    n_verts(jemmah_islamiyah_ig),
    17
  )
  
  expect_equal(
    n_verts(jemmah_islamiyah_nw),
    17
  )
})


test_that("`n_edges()` works", {
  expect_equal(
    n_edges(jemmah_islamiyah_ig),
    63
  )
  
  expect_equal(
    n_edges(jemmah_islamiyah_nw),
    63
  )
})


test_that("`is_directed()` works", {
  expect_equal(
    is_dir(jemmah_islamiyah_ig),
    FALSE
  )
  
  expect_equal(
    is_dir(jemmah_islamiyah_nw),
    FALSE
  )
})