# ----  Installing Packages

# Packages Needed
list.of.packages <- c("tidyverse", "ggplot2", "reshape2", "dplyr",
                      "rvest","xts", "TTR",
                      "caret", "xgboost", "randomForest", "e1071")

# Installing packages
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)



# Load packages into session 
lapply(list.of.packages, require, character.only=TRUE)
