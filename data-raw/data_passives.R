## R setup

library(corpora)           # for data on passives
library(tidyverse)

d <- subset(
  PassiveBrownFam,
  genre == "learned" & corpus %in% c("Brown", "Frown")) |>
  select(id, corpus, act, pass, verbs)

d$prop_passive <- d$pass/d$verbs

d$corpus <- droplevels(d$corpus)
d$id <- factor(d$id)

data_passives <- d
str(d)

use_data(data_passives, overwrite = TRUE)
