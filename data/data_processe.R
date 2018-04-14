symbols <-
  utils::read.csv('symbol_lookup_table.csv')
devtools::use_data(symbols, overwrite = TRUE)
