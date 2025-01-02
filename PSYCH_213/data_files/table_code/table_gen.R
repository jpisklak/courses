library(tidyverse)
library(xtable)
options(pillar.print_min = 30)

# Primary List of Data files
#-------------------------------------------------------------------------------

prime_list <- list.files("..", include.dirs = FALSE)
prime_list_url <- paste0(
  'https://github.com/jpisklak/courses/blob/main/PSYCH_213/data_files/', prime_list)

prime_list_html <- paste0(
  '<a href = "', prime_list_url, '">', 
  prime_list, '</a>')


df <- tibble(
  `General Data Files` = prime_list_html
)

print(xtable(df, align = c("l", "l")), 
      include.rownames = FALSE,
      type="html", 
      file="prime_table.html")


# Paired t-test Data files
#-------------------------------------------------------------------------------

pair_t_list <- paste0("pair_data_", 1:40, ".csv")
pair_t_list_url <- paste0(
  'https://github.com/jpisklak/courses/blob/main/PSYCH_213/data_files/paired_t_hmwk_data/', pair_t_list)

pair_t_list_html <- paste0(
  '<a href = "', pair_t_list_url, '">', 
  pair_t_list, '</a>')


df <- tibble(
  `Data Files for Paired T-tests` = pair_t_list_html
)

print(xtable(df, align = c("l", "l")), 
      include.rownames = FALSE,
      type="html", 
      file="pair_t_table.html")



# Independent t-test Data files
#-------------------------------------------------------------------------------

indep_t_list <- paste0("independent_data_", 1:60, ".csv")
indep_t_list_url <- paste0(
  'https://github.com/jpisklak/courses/blob/main/PSYCH_213/data_files/indep_t_hmwk_data/', indep_t_list)

indep_t_list_html <- paste0(
  '<a href = "', indep_t_list_url, '">', 
  indep_t_list, '</a>')


df <- tibble(
  `Data Files for Independent T-tests` = indep_t_list_html
)

print(xtable(df, align = c("l", "l")), 
      include.rownames = FALSE,
      type="html", 
      file="indep_t_table.html")



# Regression Data files
#-------------------------------------------------------------------------------

reg_list <- paste0("regress_data_", 1:80, ".csv")
reg_list_url <- paste0(
  'https://github.com/jpisklak/courses/blob/main/PSYCH_213/data_files/reg_hmwk_data/', reg_list)

reg_list_html <- paste0(
  '<a href = "', reg_list_url,'">', 
  reg_list, '</a>')


df <- tibble(
  `Data Files for Simple OLS Regresion` = reg_list_html
)

print(xtable(df, align = c("l", "l")), 
      include.rownames = FALSE,
      type="html", 
      file="reg_table.html")