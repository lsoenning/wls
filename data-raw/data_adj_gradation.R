## R setup

library(tidyverse)


d <- read_tsv("./data-raw/files/2025-05-08_braun1982_data.tsv")

d <- d |>
  select(adjective, form, category, text, genre, position, than_compl)

d$adjective <- factor(d$adjective)
d$form <- factor(d$form)
d$category <- factor(d$category)
d$text <- factor(d$text)
d$genre <- factor(d$genre)
d$position <- factor(d$position)
d$attributive <- ifelse(d$position == "attributive", 1, 0)

data_adj_gradation <- d

use_data(data_adj_gradation, overwrite = TRUE)

