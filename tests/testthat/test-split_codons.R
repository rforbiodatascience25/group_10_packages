# test_that("multiplication works", { expect_equal(2 * 2, 4) })

test_that("split_codons splits sequence correctly", {
  expect_equal(split_codons("ATGCGATAA"), c("ATG", "CGA", "TAA"))
  expect_equal(split_codons("AUGCGAUAA", start = 2), c("UGC", "GAU"))
  expect_equal(split_codons("ATGCGA", start = 3), c("GCG"))
  expect_equal(split_codons("ATG"), "ATG")
})

