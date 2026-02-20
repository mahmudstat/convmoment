test_that("Length of moments is r", {
  x <- c(1, 16, -40)
  con <- conv_moment_all(x, 2, 0)
  expect_equal(length(con), length(x))
})


test_that("The output is a numeric vector", {
  x <- c(1, 16, -40)
  con <- conv_moment_all(x, 2, 0)
  expect_vector(con, ptype = numeric())
})

