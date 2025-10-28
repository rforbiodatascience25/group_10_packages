test_that("correctly translates known codons", {
  result <- translate(c("AUG", "UUU", "GGC"))
  expect_equal(result, "MFG")
})

test_that("correctly handles stop codons", {
  result <- translate(c("AUG", "UAA"))
  expect_equal(result, "M_")
})
