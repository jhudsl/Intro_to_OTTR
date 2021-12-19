
borrow_chapter <- function(
  document_name,
  repo_name = NULL,
  base_url = 'https://raw.githubusercontent.com/', 
  dest_dir = file.path("resources", "other_chapters")) {
  
  if (!dir.exists(dest_dir)) {
    dir.create(dest_dir, recursive = TRUE)
  }
  
  dest_file <- file.path(dest_dir, document_name)
  
  download.file(file.path(base_url, document_name), 
                destFile = dest_file)
  
  url <- "https://raw.githubusercontent.com" "Add-course-to-jhudsl-course-library.md"
  res <- knitr::knit_child('wiki_pages/Getting-started.md', quiet = TRUE)
  cat(res, sep = '\n')
  
}

