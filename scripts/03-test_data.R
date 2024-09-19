#### Preamble ####
# Purpose: Running tests to check data is correct and free of errors
# Author: Lexi Knight
# Date: 19 September 2024
# Contact: lexi.knight@mai.utoronto.ca
# License: MIT
# Pre-requisites: Simulate data in script 00-simulate_data.R
# Any other information needed? N/A


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for NAs
all(is.na(data$number_of_marriage))

# Test for negative numbers
data$number_of_marriage |> min() <= 0

