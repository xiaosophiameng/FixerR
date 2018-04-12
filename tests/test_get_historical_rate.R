context("Testing get_historical_rate()")

access_key = "be0ea5ac928a149aec0872afcdb3bca7"

# Exceptional Cases

test_that("Datatype errors", {
  expect_error(get_historical_rate(20180101, access_key = access_key), 'TypeError: date must be a string, for example "2018-01-01"')
  expect_error(get_historical_rate('2018-01-01', symbol = 123, access_key = access_key), 'TypeError: currency symbol must be a string, for example "CAD"')
  expect_error(get_historical_rate('2018-01-01', symbol = "CAD", base_symbol = 123, access_key = access_key), 'TypeError: base_symbol must be a string, for example "USD"')
  expect_error(get_historical_rate('2018-01-01', symbol = "CAD", base_symbol = "USD", access_key = 123), 'TypeError: access_key must be a string format')
})




