# This will run some tests
test_that("hello works", {

  # Here you add the expectations you may have
  # E.g. we expect the function to raise a message with the word "hello"
  expect_message(hello("hisham"), regexp = "Hello")

  # We also expect no output (NULL) as the fun only raises a message
  expect_null(hello("hisham"))

})
