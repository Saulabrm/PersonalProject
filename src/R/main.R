####### Main #####

#rm(list=ls())
options(scipen=999)
DATA_PATH=paste0(getwd(), "/data/")



Project.inputFilePath <- function(file_name) paste0(DATA_PATH, "input/", file_name)
Project.outputFilePath <- function(deliverable) {
  function(file_name) paste0(DATA_PATH, "output/", deliverable, "/", file_name) #currying functions
}



# Source all .R files
Project.sourceLoader <- function() {
  
  all_R_files <- list.files(path = "src", pattern = "*.R", recursive = TRUE)
  
  isExcludedFile <- function(file_path) {
    (file_path == "src/R/main.R") || (file_path == "src/R/lib.R") || (file_path == "src/R/tests/testing.R")
  }
  
  
  
  lapply(all_R_files, function(file_path) {
    file_path <- paste0("src/", file_path)
    if (!isExcludedFile(file_path)) {
      source(file_path)
      print(file_path)
    }
  })
}



## Source lib.R

source("src/R/lib.R")

# Execute sourcing of al .R files
Project.sourceLoader()
