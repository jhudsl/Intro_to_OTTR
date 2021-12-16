#!/usr/bin/env Rscript

# Run spell check and save results

folder_name <- "DaSL_Course_Template_Bookdown.wiki"

# Find .git root directory
root_dir <- rprojroot::find_root(rprojroot::has_dir(".git"))

bookdown_file <- file.path(root_dir, "_bookdown.yml")

# Read bookdown
bookdown <- yaml::read_yaml(bookdown_file)

# Get sidebar file names
sidebar <- readLines(file.path(folder_name, "_Sidebar.md"))
sidebar <- grep("#|\\[", sidebar, value = TRUE)



# Trim off lines
sidebar <- stringr::word(sidebar, sep = "wiki/", 2)
sidebar <- gsub(")", "", sidebar)

# filenames
filenames <- sidebar[!is.na(sidebar)]

# Copy over files
file.copy(from = file.path(folder_name, paste0(filenames, ".md")), 
          to =  paste0(filenames, ".Rmd"), 
          overwrite = TRUE)

filenames <- paste0(filenames, ".Rmd")

bookdown$rmd_files <- c(
  "index.Rmd",
  filenames,
  "About.Rmd",
  "References.Rmd"
)

yaml::write_yaml(bookdown, file = bookdown_file)
