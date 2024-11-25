rm(list = ls())
install_and_load <- function(package) {
  if (!require(package, character.only = TRUE)) {
    install.packages(package, dependencies = TRUE)  # Install package if not already installed
    library(package, character.only = TRUE)         # Load the package after installation
    message(paste(package, "has been installed and loaded."))
  } else {
    library(package, character.only = TRUE)  
    message(paste(package, "has been loaded."))
  }
}

# List of packages to check and install
packages <-c('tidyverse')

# Loop through each package to check, install, and load
for (package in packages) {
  install_and_load(package)
}

setwd("insert path here")