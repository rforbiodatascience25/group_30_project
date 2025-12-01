# cleanup.R
library(here)
library(fs)

html_files <- dir_ls(here("R"), glob = "*.html")
file_copy(html_files, path(here("results"), path_file(html_files)), overwrite = TRUE)
file_delete(html_files)
