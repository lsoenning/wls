
library(dataverse)
library(tidyverse)


dat <- get_dataframe_by_name(
  filename  = "modals_freq_form.tsv",
  dataset   = "10.18710/7LNWJX",
  server    = "dataverse.no",
  .f        = read_tsv,
  original  = TRUE
)

d_modals <- subset(dat, corpus %in% c("Brown", "Frown"))
data_should <- subset(d_modals, modal=="should")

data_should$text_id <- factor(data_should$text_id)
data_should$corpus <- factor(data_should$corpus)
data_should$genre <- factor(data_should$genre)
data_should$text_category <- factor(data_should$text_category)
data_should$variety <- factor(data_should$variety)

data_should <- data_should[,-c(2,8,9)]

str(data_should)

use_data(data_should, overwrite = TRUE)
