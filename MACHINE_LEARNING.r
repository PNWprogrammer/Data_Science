library(tidyverse)
library(reshape2)
data <- housing %>%
  mutate(mean_bedrooms = (total_bedrooms / households),
         mean_rooms = (total_rooms / households)) %>%
  select(-c(total_bedrooms, total_rooms)) %>%
  mutate(near_bay = ifelse(ocean_proximity == "NEAR BAY", 1, 0),
         h_ocean = ifelse(ocean_proximity == "<1H OCEAN", 1, 0),
         inland = ifelse(ocean_proximity == "INLAND", 1, 0),
         near_ocean = ifelse(ocean_proximity == "NEAR OCEAN", 1, 0),
         island = ifelse(ocean_proximity == "ISLAND", 1, 0))


#This is a way I cleaned the data