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

# --- Correctness tests against direct computation ---

test_that("conv_moment_all matches direct computation for raw-to-raw", {
  set.seed(123)
  x <- rnorm(100, mean = 5, sd = 2)
  a <- 2
  k <- 7
  raw_a <- sapply(1:6, function(r) mean((x - a)^r))
  raw_k_direct <- sapply(1:6, function(r) mean((x - k)^r))
  raw_k_converted <- conv_moment_all(raw_a, a = a, k = k)
  expect_equal(raw_k_converted, raw_k_direct, tolerance = 1e-12)
})

test_that("raw2central matches direct central moment computation", {
  set.seed(123)
  x <- rnorm(200, mean = 10, sd = 3)
  raw_0 <- sapply(1:6, function(r) mean(x^r))
  central_direct <- sapply(1:6, function(r) mean((x - mean(x))^r))
  central_converted <- raw2central(raw_0, origin = 0)
  expect_equal(central_converted, central_direct, tolerance = 1e-12)
})

test_that("central2raw matches direct raw moment computation", {
  set.seed(123)
  x <- rnorm(150, mean = -2, sd = 1.5)
  mean_x <- mean(x)
  central <- sapply(1:6, function(r) mean((x - mean_x)^r))
  raw_0_direct <- sapply(1:6, function(r) mean(x^r))
  raw_0_converted <- central2raw(central, mean_val = mean_x)
  expect_equal(raw_0_converted, raw_0_direct, tolerance = 1e-12)
})

test_that("Round-trip: raw -> central -> raw returns original", {
  set.seed(123)
  x <- rnorm(50, mean = 3, sd = 2)
  raw_0 <- sapply(1:6, function(r) mean(x^r))
  mean_x <- mean(x)
  central <- raw2central(raw_0, origin = 0)
  raw_0_back <- central2raw(central, mean_val = mean_x)
  expect_equal(raw_0_back, raw_0, tolerance = 1e-12)
})

# --- Edge cases ---

test_that("Works for single moment (r=1)", {
  x <- c(5)
  result <- conv_moment_all(x, a = 0, k = 2)
  expect_equal(result, c(3))  # mu'_1(2) = mu'_1(0) - 2
})

test_that("Works for high order (r=10)", {
  set.seed(123)
  x <- rnorm(1000, mean = 5, sd = 2)
  raw_10 <- sapply(1:10, function(r) mean(x^r))
  central_10_direct <- sapply(1:10, function(r) mean((x - mean(x))^r))
  central_10_converted <- raw2central(raw_10, origin = 0)
  expect_equal(central_10_converted, central_10_direct, tolerance = 1e-10)
})

test_that("Handles negative origins correctly", {
  set.seed(123)
  x <- rnorm(100, mean = 0, sd = 1)
  a <- -3
  k <- 2
  raw_a <- sapply(1:5, function(r) mean((x - a)^r))
  raw_k_direct <- sapply(1:5, function(r) mean((x - k)^r))
  raw_k_converted <- conv_moment_all(raw_a, a = a, k = k)
  expect_equal(raw_k_converted, raw_k_direct, tolerance = 1e-12)
})

test_that("Central moment 1 is always 0", {
  set.seed(123)
  x <- rnorm(100, mean = 7, sd = 2)
  raw <- sapply(1:4, function(r) mean(x^r))
  central <- raw2central(raw, origin = 0)
  expect_equal(central[1], 0, tolerance = 1e-12)
})

test_that("Variance (central moment 2) matches var()", {
  set.seed(123)
  x <- rnorm(100, mean = 7, sd = 2)
  raw <- sapply(1:4, function(r) mean(x^r))
  central <- raw2central(raw, origin = 0)
  expect_equal(central[2], var(x) * (length(x) - 1) / length(x), tolerance = 1e-12)
})