test_that("base_subs works", {
  result <- base_subs("ATCGCGTAT")
  expect_equal(result, "AUCGCGUAU")
})
