

library(arrow, warn.conflicts = FALSE)
library(dplyr, warn.conflicts = FALSE)
library(purrr)

files_book_train <- list.files("data/book_train.parquet/", recursive = T, full.names = T)
files_book_test <- list.files("data/book_test.parquet/", recursive = T, full.names = T)
files_trade_train <- list.files("data/trade_train.parquet/", recursive = T, full.names = T)
files_trade_test <- list.files("data/trade_test.parquet/", recursive = T, full.names = T)

sample_submission <- read_csv("data/sample_submission.csv")

df_book_train <- files_book_train[c(1, 112)] %>% 
  map_dfr(arrow::read_parquet)

df_book_test <- arrow::read_parquet(files_book_test)

df_trade_train <- files_trade_train %>% 
  map_dfr(arrow::read_parquet)

df_trade_test <- files_trade_test %>% 
  map_dfr(arrow::read_parquet)

truth_train <- read_csv("data/train.csv")
truth_test <- read_csv("data/test.csv")

df$time_id %>% table()


book_test <- arrow::read_parquet("data/book_test.parquet/stock_id=0/7832c05caae3489cbcbbb9b02cf61711.parquet")

df %>% 
  summary()
