library(tidyverse)
library(xtable)
options(pillar.print_min = 30)

# Data File Lists
prime_list <- list.files("..", pattern = "\\.csv$", include.dirs = FALSE)
pair_t_list <- paste0("pair_data_", 1:40, ".csv")
ind_t_list <- paste0("independent_data_", 1:60, ".csv")
reg_list <- paste0("regress_data_", 1:80, ".csv")
BFD_list <- paste0("BFD_", 1:5, ".csv")
BFD_skew_list <- paste0("BFD_skew_", 1:6, ".csv")

# GitHub URLs
href_main <- "https://github.com/jpisklak/courses/blob/main/PSYCH_213_fa2025/data_files/"
raw_main <- "https://raw.githubusercontent.com/jpisklak/courses/refs/heads/main/PSYCH_213_fa2025/data_files/"

# Data frames
df_prime <- tibble(
  
  `General Data Files` =
    paste0('<a href = "', href_main, prime_list, '">', prime_list, "</a>"),
  
  `Raw URL` = paste0(raw_main, prime_list)
)


df_pair <- tibble(
  
  `Data Files for Paired T-tests` =
    paste0(
      '<a href = "', href_main, "paired_t_hmwk_data/", pair_t_list, '">', 
      pair_t_list, "</a>"),
  
  `Raw URL` = paste0(raw_main, pair_t_list)
)

df_indep <- tibble(
  
  `Data Files for Independent T-tests` =
    paste0(
      '<a href = "', href_main, "indep_t_hmwk_data/", ind_t_list, '">', 
      ind_t_list, "</a>"),
  
  `Raw URL` = paste0(raw_main, ind_t_list)
)

df_reg <- tibble(
  
  `Data Files for Simple OLS Regresion` =
    paste0(
      '<a href = "', href_main, "reg_hmwk_data/", reg_list, '">', 
      reg_list, "</a>"),
  
  `Raw URL` = paste0(raw_main, reg_list)
)

df_BFD <- tibble(
  
  `BF Data Files` =
    paste0(
      '<a href = "', href_main, "BFD/", BFD_list, '">', 
      BFD_list, "</a>"),
  
  `Raw URL` = paste0(raw_main, BFD_list)
)

df_BFD_skew <- tibble(
  
  `BF Skewed Data Files` =
    paste0(
      '<a href = "', href_main, "BFD_skew/", BFD_skew_list, '">', 
      BFD_skew_list, "</a>"),
  
  `Raw URL` = paste0(raw_main, BFD_skew_list)
)

# Print Tables

print(xtable(df_prime, align = c("l", "l", "l")),
      include.rownames = FALSE,
      type = "html",
      file = "prime_table.html"
)

print(xtable(df_pair, align = c("l", "l", "l")),
      include.rownames = FALSE,
      type = "html",
      file = "pair_table.html"
)

print(xtable(df_indep, align = c("l", "l", "l")),
      include.rownames = FALSE,
      type = "html",
      file = "indep_table.html"
)

print(xtable(df_reg, align = c("l", "l", "l")),
      include.rownames = FALSE,
      type = "html",
      file = "reg_table.html"
)

print(xtable(df_BFD, align = c("l", "l", "l")),
      include.rownames = FALSE,
      type = "html",
      file = "BFD_table.html"
)

print(xtable(df_BFD_skew, align = c("l", "l", "l")),
      include.rownames = FALSE,
      type = "html",
      file = "BFD_skew_table.html"
)