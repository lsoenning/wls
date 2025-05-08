#' Laterals in German Learner English
#'
#' Data on the realization of laterals in "dark" (i.e. non-prevocalic) contexts by German learners of English, from a study by Pascoe (1987).
#'
#' @format ## `data_laterals`
#' A data frame with 147 rows and 5 columns:
#' \describe{
#'   \item{speaker}{speaker ID}
#'   \item{proficiency}{English proficiency of the speaker, expressed as a z-score}
#'   \item{word}{carrier word of the lateral}
#'   \item{context}{phonetic context of the lateral ("cluster", "singleton", "syllabic")}
#'   \item{dark}{realization as dark (1) or clear (0)}
#' }
#' @source Pascoe, Graham. 1987. Die Aussprache des Englischen an bayerischen Schulen. München: Profil.
"data_laterals"


#' Actually in contemporary British speech
#'
#' Data on the usage rate of actually in spoken British English, drawn from the Spoken BNC2014 (Love et al. 2017).
#'
#' @format ## `data_actually`
#' A data frame with 656 rows and 6 columns:
#' \describe{
#'   \item{speaker}{speaker ID}
#'   \item{gender}{self-reported gender ("Male", "Female")}
#'   \item{age_group}{age of speaker, 10 binned categories}
#'   \item{n_actually}{number of occurrences of actually}
#'   \item{n_words}{total number of words contributed by the speaker}
#'   \item{rate_pmw}{normalized frequency of actually, per million words}
#' }
#' @source Love, Robbie, Claire Dembry, Andrew Hardie, Vaclav Brezina & Tony McEnery. 2017. The Spoken BNC2014: Designing and building a spoken corpus of everyday conversations. \emph{International Journal of Corpus Linguistics}, 22(3), 319--344.
#'
#' Sönning, Lukas & Manfred Krug. 2021. Actually in contemporary British speech: Data from the Spoken BNC corpora. DataverseNO, V1. https://doi.org/10.18710/A3SATC
"data_actually"


#' The passive voice in academic writing
#'
#' Data on the frequency of the passive voice in American English academic writing, drawn from the Brown Corpus (Francis and Kučera 1979) and the Freiburg-Brown Corpus ('Frown'; Mair 1999). This dataset was originally made available as part of the R package `corpora` (Evert 2023).
#'
#' @format ## `data_passives`
#' A data frame with 160 rows and 6 columns:
#' \describe{
#'   \item{id}{text ID}
#'   \item{corpus}{source corpus ("Brown" vs. "Frown")}
#'   \item{act}{number of active verb phrases in the text}
#'   \item{pass}{number of passive verb phrases in the text}
#'   \item{verbs}{total number of verb phrases in the text}
#'   \item{prop_passive}{proportion of passive verb phrases in the text}
#' }
#' @source Evert, Stephanie. 2023. *corpora: Statistics and Data Sets for Corpus Frequency Data*. doi:10.32614/CRAN.package.corpora <https://doi.org/10.32614/CRAN.package.corpora>, R package version 0.6, <https://CRAN.R-project.org/package=corpora>.
#'
#' Francis, W. N. & H. Kučera. 1979. A Standard Corpus of Present-Day Edited American English, for Use with Digital Computers (Brown). Providence, RI: Brown University.
#'
#' Mair, Christian. 1999. The Freiburg-Brown Corpus (‘Frown’). Original edition. Freiburg: Albert-Ludwigs-Universität.
"data_passives"


#' The frequency of "should" in written American English
#'
#' Data on the frequency of the modal verb "should" in written American English, drawn from the Brown Corpus (Francis and Kučera 1979) and the Freiburg-Brown Corpus ('Frown'; Mair 1999). This is a subset from a larger dataset on the frequency of modal verbs in the Brown Family of corpora (Sönning 2023).
#'
#' @format ## `data_should`
#' A data frame with 1,000 rows and 6 columns:
#' \describe{
#'   \item{text_id}{text ID}
#'   \item{n_tokens}{number of occurrences of "should" in the text}
#'   \item{corpus}{source corpus ("Brown" vs. "Frown")}
#'   \item{genre}{broad genre ("Fiction", "General prose", "Learned", "Press")}
#'   \item{subgenre}{subgenre}
#'   \item{n_words}{length of the text (number of word tokens)}
#' }
#' @source Francis, W. N. & H. Kučera. 1979. A Standard Corpus of Present-Day Edited American English, for Use with Digital Computers (Brown). Providence, RI: Brown University.
#'
#' Mair, Christian. 1999. The Freiburg-Brown Corpus (‘Frown’). Original edition. Freiburg: Albert-Ludwigs-Universität.
#'
#' Sönning, Lukas. 2024. Background data for: Some obstacles to replication in corpus linguistics. DataverseNO, V1. https://doi.org/10.18710/7LNWJX
"data_should"


#' Adjective gradation in 1960s written American English
#'
#' Data on the gradation of adjectives in written American English, from Braun (1982). The data only include adjectives that are known to occur with both strategies (inflectional -er/-est and periphrastic more/most). Includes 817 tokens, 139 adjectival types, and information on syntactic context.
#'
#' @format ## `data_adj_gradation`
#' A data frame with 817 rows and 9 columns:
#' \describe{
#'   \item{adjective]{the adjectival base}
#'   \item{form}{"a" analytic (more/most), "s" synthetic (-er/-est)}
#'   \item{category}{"C" comparative, "S" superlative}
#'   \item{text}{text identifier}
#'   \item{genre}{genre of the text (4 categories: "drama", "fiction", "newspaper", "nonfiction")}
#'   \item{position}{syntactic position: "attributive", "predicative", "postnominal", "nominalized"}
#'   \item{than_compl}{than-complement (comparative clause) present? 1 = Yes, 0 = no}
#'   \item{attributive}{whether the adjective occurs in atributive position: 1 = Yes, 0 = no}
#'   \item{coordinated}{do two (or more) graded adjectives occur in coordination? 1 = Yes, 0 = no}
#' }
#' @source Braun, Albert. 1982. Studien zu Syntax und Morphologie der Steigerungsformen im Englischen. Bern: Franke.
"data_adj_gradation"
