## R setup

library(tidyverse)


braun_pat <- read.csv2("./data-raw/files/braun1982_listing_by_pattern.csv")
braun_adj <- read.csv2("./data-raw/files/braun1982_listing_by_adjective.csv")

by_adj_unique <- paste0(
  braun_adj$adjective, braun_adj$text, braun_adj$page
)

by_pat_unique <- paste0(
  braun_pat$adjective, braun_pat$text, braun_pat$page
)

length(by_adj_unique)
length(by_pat_unique)

sum(!(by_pat_unique %in% by_adj_unique))

sum(!(table(by_adj_unique) == table(by_pat_unique)))

table(by_adj_unique)[!(table(by_adj_unique) == table(by_pat_unique))]


str(braun)

length(unique(braun$adjective))
length(unique(paste0(braun$corpus, braun$adjective, braun$form)))

braun$gradation <- substr(braun$form, start = 1, stop = 1)
braun$variant <- substr(braun$form, start = 2, stop = 2)


sort(xtabs(~text, data=braun))
sort(xtabs(~adjective, data=braun))

head(braun)

braun_summary <- braun %>% group_by(adjective, gradation) %>%
  summarize(n_syn = sum(variant=="S"),
            n_ana = sum(variant=="A"),
            n_total = n(),
            prop_syn = n_syn/n_total,
            prop_ana = n_ana/n_total)

braun_summary <- data.frame(braun_summary)
braun_summary$gradation <- factor(braun_summary$gradation)

braun_summary %>% select(adjective, gradation, prop_syn) %>%
  spread(key=gradation, value=prop_syn) %>%
  mutate(pref_syn_superlative = S - K) %>%
  ggplot(aes(x=pref_syn_superlative)) + geom_dotplot()

braun_summary %>% select(adjective, gradation, n_total, prop_syn) %>%
  spread(key=gradation, value=prop_syn) %>%
  mutate(pref_syn_superlative = S - K) %>%
  ggplot(aes(x=pref_syn_superlative)) + geom_histogram()


str(braun_summary)


# patterns
braun <- read.csv2("./data/other_studies/braun1982_patterns.csv", stringsAsFactors = T)
str(braun)

xtabs(~pattern, data=braun)
round(xtabs(~pattern, data=braun)/817*100, 1)

# code than-clause
braun$than <- NA

braun$than <- ifelse(braun$pattern == "b1", 1, braun$than)
braun$than <- ifelse(braun$pattern == "b2", 0, braun$than)
braun$than <- ifelse(braun$pattern == "c1", 1, braun$than)
braun$than <- ifelse(braun$pattern == "c2", 0, braun$than)
braun$than <- ifelse(braun$pattern == "c3", 1, braun$than)
braun$than <- ifelse(braun$pattern == "c4", 0, braun$than)
braun$than <- ifelse(braun$pattern == "e1", 1, braun$than)
braun$than <- ifelse(braun$pattern == "e2", 0, braun$than)
braun$than <- ifelse(braun$pattern == "f1", 1, braun$than)
braun$than <- ifelse(braun$pattern == "f2", 0, braun$than)
braun$than <- ifelse(braun$pattern == "f3", 1, braun$than)
braun$than <- ifelse(braun$pattern == "f4", 0, braun$than)
braun$than <- ifelse(braun$pattern == "h2", NA, braun$than)

braun$than <- ifelse(braun$pattern == "a1", 1, braun$than)
braun$than <- ifelse(braun$pattern == "a2", 0, braun$than)
braun$than <- ifelse(braun$pattern == "a3", 0, braun$than)
braun$than <- ifelse(braun$pattern == "d1", 1, braun$than)
braun$than <- ifelse(braun$pattern == "d2", 0, braun$than)
braun$than <- ifelse(braun$pattern == "d3", 1, braun$than)
braun$than <- ifelse(braun$pattern == "h1", NA, braun$than)

braun$than <- ifelse(braun$pattern == "l", NA, braun$than)
braun$than <- ifelse(braun$pattern == "m", NA, braun$than)
braun$than <- ifelse(braun$pattern == "n", NA, braun$than)
braun$than <- ifelse(braun$pattern == "o", NA, braun$than)

braun$than_c <- ifelse(braun$than==1, 1, -1)



# code attributive/predicative
braun$attributive <- NA

braun$attributive <- ifelse(braun$pattern == "b1", 0, braun$attributive)
braun$attributive <- ifelse(braun$pattern == "b2", 0, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "c1", 0, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "c2", 0, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "c3", 0, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "c4", 0, braun$attributive)
braun$attributive <- ifelse(braun$pattern == "e1", 0, braun$attributive)
braun$attributive <- ifelse(braun$pattern == "e2", 0, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "f1", 0, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "f2", 0, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "f3", 0, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "f4", 0, braun$attributive)
braun$attributive <- ifelse(braun$pattern == "h2", 0, braun$attributive)

braun$attributive <- ifelse(braun$pattern == "a1", 1, braun$attributive)
braun$attributive <- ifelse(braun$pattern == "a2", 1, braun$attributive)
braun$attributive <- ifelse(braun$pattern == "a3", 1, braun$attributive)
braun$attributive <- ifelse(braun$pattern == "d1", 1, braun$attributive)
braun$attributive <- ifelse(braun$pattern == "d2", 1, braun$attributive)
braun$attributive <- ifelse(braun$pattern == "d3", 1, braun$attributive)
braun$attributive <- ifelse(braun$pattern == "h1", 1, braun$attributive)

#braun$attributive <- ifelse(braun$pattern == "l", 1, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "m", 0, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "n", 0, braun$attributive)
#braun$attributive <- ifelse(braun$pattern == "o", 0, braun$attributive)

braun$attributive_c <- ifelse(braun$attributive==1, 1, -1)


sum(is.na(braun$attributive))


# Compare with Table 10 (p. 90-92) in Braun (198)
xtabs(~pattern + form, data=braun)


braun$analytic <- ifelse(braun$form=="a", 1, 0)
