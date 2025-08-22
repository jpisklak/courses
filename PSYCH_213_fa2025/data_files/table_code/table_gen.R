library(tidyverse)
library(xtable)
options(pillar.print_min = 30)

# Primary List of Data files
#-------------------------------------------------------------------------------

prime_list <- list.files("..", pattern = "\\.csv$", include.dirs = FALSE)
prime_list_url <- paste0(
  "https://github.com/jpisklak/courses/blob/main/PSYCH_213_fa2025/data_files/", prime_list
)
raw_prime_url <- paste0(
  "https://raw.githubusercontent.com/jpisklak/courses/refs/heads/main/PSYCH_213_fa2025/data_files/", prime_list
)

prime_list_html <- paste0(
  '<a href = "', prime_list_url, '">',
  prime_list, "</a>"
)


df <- tibble(
  `General Data Files` = prime_list_html,
  `Raw URL` = raw_prime_url
)

print(xtable(df, align = c("l", "l", "l")),
  include.rownames = FALSE,
  type = "html",
  file = "prime_table.html"
)


# Paired t-test Data files
#-------------------------------------------------------------------------------

pair_t_list <- paste0("pair_data_", 1:40, ".csv")
pair_t_list_url <- paste0(
  "https://github.com/jpisklak/courses/blob/main/PSYCH_213/data_files/paired_t_hmwk_data/", pair_t_list
)

pair_t_list_html <- paste0(
  '<a href = "', pair_t_list_url, '">',
  pair_t_list, "</a>"
)

raw_t_list_url <- paste0(
  "https://raw.githubusercontent.com/jpisklak/courses/refs/heads/main/PSYCH_213_fa2025/data_files/paired_t_hmwk_data/", pair_t_list
)

df <- tibble(
  `Data Files for Paired T-tests` = pair_t_list_html,
  `Raw URL` = raw_t_list_url
)

print(xtable(df, align = c("l", "l")),
  include.rownames = FALSE,
  type = "html",
  file = "pair_t_table.html"
)



# Independent t-test Data files
#-------------------------------------------------------------------------------

indep_t_list <- paste0("independent_data_", 1:60, ".csv")
indep_t_list_url <- paste0(
  "https://github.com/jpisklak/courses/blob/main/PSYCH_213/data_files/indep_t_hmwk_data/", indep_t_list
)

indep_t_list_html <- paste0(
  '<a href = "', indep_t_list_url, '">',
  indep_t_list, "</a>"
)

raw_indep_t_list_url <- paste0(
  "https://raw.githubusercontent.com/jpisklak/courses/refs/heads/main/PSYCH_213_fa2025/data_files/indep_t_hmwk_data/", indep_t_list
)


df <- tibble(
  `Data Files for Independent T-tests` = indep_t_list_html,
  `Raw URL` = raw_indep_t_list_url
)

print(xtable(df, align = c("l", "l")),
  include.rownames = FALSE,
  type = "html",
  file = "indep_t_table.html"
)



# Regression Data files
#-------------------------------------------------------------------------------

reg_list <- paste0("regress_data_", 1:80, ".csv")
reg_list_url <- paste0(
  "https://github.com/jpisklak/courses/blob/main/PSYCH_213/data_files/reg_hmwk_data/", reg_list
)

reg_list_html <- paste0(
  '<a href = "', reg_list_url, '">',
  reg_list, "</a>"
)

reg_list_url_raw <- paste0(
  "https://raw.githubusercontent.com/jpisklak/courses/refs/heads/main/PSYCH_213_fa2025/data_files/reg_hmwk_data/", reg_list
)

df <- tibble(
  `Data Files for Simple OLS Regresion` = reg_list_html,
  `Raw URL` = raw_prime_url
)

print(xtable(df, align = c("l", "l")),
  include.rownames = FALSE,
  type = "html",
  file = "reg_table.html"
)


# BFD Data files
#-------------------------------------------------------------------------------

BFD_list <- paste0("BFD_", 1:5, ".csv")
BFD_list_url <- paste0(
  "https://github.com/jpisklak/courses/blob/main/PSYCH_213/data_files/BFD/", BFD_list
)

BFD_list_html <- paste0(
  '<a href = "', BFD_list_url, '">',
  BFD_list, "</a>"
)

BFD_list_url <- paste0(
  "https://raw.githubusercontent.com/jpisklak/courses/refs/heads/main/PSYCH_213_fa2025/data_files/BFD/", BFD_list
)


df <- tibble(
  `BF Data Files` = BFD_list_html,
  `Raw URL` = raw_prime_url
)

print(xtable(df, align = c("l", "l")),
  include.rownames = FALSE,
  type = "html",
  file = "BFD_table.html"
)