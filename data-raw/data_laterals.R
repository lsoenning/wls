## R setup

library(tidyverse)

dat <- read.csv2("./data-raw/files/l.pascoe.csv")

str(dat)

data_laterals <- dat |>
  select(-proficiency) |>
  dplyr::rename(
    speaker = subject,
    proficiency = proficiency.z,
    dark = correct)

data_laterals$speaker <- factor(
  paste0("spk_", sprintf("%02d", data_laterals$speaker)))

data_laterals$word <- factor(data_laterals$word)

data_laterals$context <- factor(data_laterals$context)

str(data_laterals)


use_data(data_laterals, overwrite = TRUE)
