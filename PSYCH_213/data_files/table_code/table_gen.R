library(tidyverse)
library(xtable)
options(pillar.print_min = 30)

# Primary List of Data files
#-------------------------------------------------------------------------------

prime_list <- list.files("..", include.dirs = FALSE)
prime_list_url <- paste0(
  'https://raw.githubusercontent.com/jpisklak/courses/refs/heads/main/PSYCH_213/data_files/', prime_list)

prime_list_html <- paste0(
  '<a href = "', prime_list_url, '" download = "', prime_list_url, '">', 
  prime_list, '</a>')


df <- tibble(
  Filename = prime_list_html
)

print(xtable(df, align = c("l", "l")), 
      include.rownames = FALSE,
      type="html", 
      file="prime_table.html")


# Primary List of Data files
#-------------------------------------------------------------------------------

prime_list <- list.files("../paired_t_hmwk_data", include.dirs = FALSE)
prime_list_url <- paste0(
  'https://raw.githubusercontent.com/jpisklak/courses/refs/heads/main/PSYCH_213/data_files/', prime_list)

prime_list_html <- paste0(
  '<a href = "', prime_list_url, '" download = "', prime_list_url, '">', 
  prime_list, '</a>')


df <- tibble(
  Filename = prime_list_html
)

print(xtable(df, align = c("l", "l")), 
      include.rownames = FALSE,
      type="html", 
      file="prime_table.html")