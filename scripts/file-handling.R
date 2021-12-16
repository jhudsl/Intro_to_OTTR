#!/usr/bin/env Rscript

# Run spell check and save results

folder_name <- "DaSL_Course_Template_Bookdown.wiki"

# Find .git root directory
root_dir <- rprojroot::find_root(rprojroot::has_dir(".git"))

# Get sidebar file names
sidebar <- readLines(file.path(folder_name, "_Sidebar.md"))
sidebar <- grep("#|\\[", sidebar, value = TRUE)
names(sidebar) <- sidebar

# Trim off lines
sidebar <- stringr::word(sidebar, sep = "wiki/", 2)
sidebar <- gsub(")", "", sidebar)

# filenames
filenames <- sidebar[!is.na(sidebar)]

