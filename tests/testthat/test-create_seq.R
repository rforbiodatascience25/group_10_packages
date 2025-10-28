test_that("Nuclotide list of size n gives a concatenated sequence of size n", {
  test_list <- c("G","T","A","C","T")
  expect_equal(paste0(test_list, collapse = ""),"GTACT")
})
