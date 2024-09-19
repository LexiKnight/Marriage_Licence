#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
# Author: Lexi Knight
# Date: 19 September 2024
# Contact: lexi.knight@mai.utoronto.ca
# License: MIT
# Pre-requisites: #### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
# Author: Rohan Alexander
# Date: 19 September 2024
# Contact: lexi.knight@mail.utoronto.ca
# License: MIT
# Pre-requisites: First simulate the data as done in script 00-simulate_data.R, then download the data via script 01-download_data.R
# Any other information needed? N/A

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
  )

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
# Any other information needed? None.
