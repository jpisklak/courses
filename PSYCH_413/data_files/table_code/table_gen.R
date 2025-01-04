library(tidyverse)
library(xtable)
options(pillar.print_min = 30)

# Primary List of Data files
#-------------------------------------------------------------------------------

prime_list <- list.files("..", include.dirs = FALSE)
prime_list_url <- paste0(
  'https://github.com/jpisklak/courses/blob/main/PSYCH_413/data_files/', prime_list)

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

