#### Preamble ####
# Purpose: Simulates an analysis dataset about Pokemon level and weakness against fire
# Author: Terry Tu
# Date: 26 March 2024
# Contact: xiangyu.tu@mail.utoronto.ca
# License: MIT
# Pre-requisites: -
# Any other information needed? -


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
data <- 
  tibble(
    level = rnorm(n = 1000, mean = 100, sd = 10) |> floor(),
    weakness = sample(x = c("fire", "not fire"), size = 1000, replace = TRUE),
    type = sample(x = c("water", "fire", "grass", "electric", "psychic"), size = 1000, replace = TRUE),
    attack = rnorm(n = 1000, mean = 75, sd = 15) |> floor(),
    defense = rnorm(n = 1000, mean = 70, sd = 15) |> floor(),
    speed = rnorm(n = 1000, mean = 65, sd = 15) |> floor()
  )

head(data)