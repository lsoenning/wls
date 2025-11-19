library(tlda)
library(tidyverse)

# actually in ICE-GB: Macro genres

actually_macro_genre <- data.frame(t(biber150_ice_gb_macro_genre[c("actually", "word_count"),])) |>
  rownames_to_column(var = "macro_genre")


use_data(actually_macro_genre, overwrite = TRUE)



# actually in ICE-GB: Text files

actually_texts <- data.frame(t(biber150_ice_gb[c("actually", "word_count"),])) |>
  rownames_to_column(var = "text_file")

str(metadata_ice_gb)
actually_texts <- full_join(
  actually_texts,
  metadata_ice_gb[,-7],
  by = "text_file")

str(actually_texts)
use_data(actually_texts, overwrite = TRUE)
