test_that("base_subs works", {
  result <- transcription("ATCGCGTAT")
  expect_equal(result, "AUCGCGUAU")
})
