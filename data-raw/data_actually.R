## R setup

library(dataverse)
library(tidyverse)

## download the data from TROLLing

dat <- get_dataframe_by_name(
  filename  = "actually_data_2014.tab",
  dataset   = "10.18710/A3SATC",
  server    = "dataverse.no",
  .f        = read.csv,
  original  = TRUE
)

# remove speakers who contributed fewer than 100 words to the corpus
d <- dat |>
  filter(total > 100,
         Age_range != "Unknown")

# create new variable with the normalized frequency of actually (per million words)
d$rate_pmw <- (d$count / d$total) * 1000000

# convert Age group into an ordered factor and reverse the order
d <- d |>
  mutate(
    age_group = factor(
      Age_range,
      levels = rev(sort(unique(Age_range))),
      ordered = TRUE))

# select (and rename) relevant variables
data_actually <- d |> dplyr::select(speaker, Gender, age_group, count, total, rate_pmw) |>
  dplyr::rename(
    gender = Gender,
    n_actually = count,
    n_words = total)




use_data(data_actually, overwrite = TRUE)
