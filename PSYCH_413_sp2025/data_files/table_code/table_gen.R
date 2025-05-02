library(tidyverse)
library(knitr)
library(kableExtra)
library(clipr)
options(pillar.print_min = 30)

# Define directory and GitHub repo info
local_dir <- ".."
repo_url <- "https://github.com/jpisklak/courses/tree/main/PSYCH_413_sp2025"
github_path <- "data_files"  # the relative path to the folder in the GitHub repo

# List all CSV files
csv_files <- list.files(local_dir, pattern = "\\.csv$", full.names = FALSE)

# Create GitHub URLs
df <- data.frame(
  Filename = csv_files,
  GitHub_Link = paste0(repo_url, "/", github_path, "/", csv_files),
  Raw_URL = paste0("https://raw.githubusercontent.com/jpisklak/courses/refs/heads/main/PSYCH_413_sp2025/", 
                   github_path, "/", csv_files), stringsAsFactors = FALSE)


# Create an HTML table
df$Filename <- paste0("<a href='", df$GitHub_Link, "' target = '_blank'>", df$Filename, "</a>")

# Render the table
html_tab <- kable(df[, c(1, 3)], 
      format = "html", 
      escape = FALSE, 
      col.names = c("File", "Raw URL")) %>%
  kable_styling(full_width = FALSE, bootstrap_options = c("striped", "hover"))

write_clip(html_tab)
