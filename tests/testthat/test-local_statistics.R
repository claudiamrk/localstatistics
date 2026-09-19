library(testthat)

test_that("calculate_local_statistics calculates correct statistics", {

  x <- c(1, 2, 3, 4, 5)

  result <- calculate_local_statistics(x)

  expect_equal(result$mean, 3)
  expect_equal(result$sd, sd(x))
  expect_equal(result$min, 1)
  expect_equal(result$max, 5)
  expect_s3_class(result, "local_statistics")

})
