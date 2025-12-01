# cleanup.R
library(here)
library(fs)

html_files <- dir_ls(here("R"), glob = "*.html")
file_move(html_files, path(here("results"), path_file(html_files)))
