# clean_data.R
# Maud Boucherit, 2017-12-07
#
# This script cleans the mushrooms.csv raw data set. 
# Mainly, it renames the levels of variables
#
# Input: a csv file, the raw data set
# Output: a csv file, the clean data set
#
# Usage: Rscript src/clean_data.R data/mushrooms.csv results/clean_mushrooms.csv

# library
library(tidyverse)

# read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
mushrooms <- args[1]
out_file <- args[2]

# define main function
main <- function(){
  
  # read in data
  data <- read_csv(mushrooms)
  
  # select the variables of interest
  data <- data %>% 
    rename(cap_shape = `cap-shape`,
           cap_color = `cap-color`,
           gill_spacing = `gill-spacing`,
           gill_size = `gill-size`,
           gill_color = `gill-color`,
           stalk_color = `stalk-color-below-ring`,
           spore_color = `spore-print-color`) %>% 
    select(class, cap_shape, cap_color, odor, 
           gill_spacing, gill_size, gill_color, 
           stalk_color, spore_color)
  
  # change labels of class
  data <- data %>% 
    mutate(class = replace(class, class == "p", "1"),
           class = replace(class, class == "e", "0"))
  
  # change labels of cap_shape
  data <- data %>% 
    mutate(cap_shape = replace(cap_shape, cap_shape == "b", "bell"),
           cap_shape = replace(cap_shape, cap_shape == "c", "conical"),
           cap_shape = replace(cap_shape, cap_shape == "x", "convex"),
           cap_shape = replace(cap_shape, cap_shape == "f", "flat"),
           cap_shape = replace(cap_shape, cap_shape == "k", "knobbed"),
           cap_shape = replace(cap_shape, cap_shape == "s", "sunken"))
  
  # change labels of cap_color
  data <- data %>% 
    mutate(cap_color = replace(cap_color, cap_color == "n", "brown"),
           cap_color = replace(cap_color, cap_color == "b", "buff"),
           cap_color = replace(cap_color, cap_color == "c", "cinnamon"),
           cap_color = replace(cap_color, cap_color == "g", "gray"),
           cap_color = replace(cap_color, cap_color == "r", "green"),
           cap_color = replace(cap_color, cap_color == "p", "pink"),
           cap_color = replace(cap_color, cap_color == "u", "purple"),
           cap_color = replace(cap_color, cap_color == "e", "red"),
           cap_color = replace(cap_color, cap_color == "w", "white"),
           cap_color = replace(cap_color, cap_color == "y", "yellow"))
  
  # change labels of odor
  data <- data %>% 
    mutate(odor = replace(odor, odor == "a", "almond"),
           odor = replace(odor, odor == "l", "anise"),
           odor = replace(odor, odor == "c", "creosote"),
           odor = replace(odor, odor == "y", "fishy"),
           odor = replace(odor, odor == "f", "foul"),
           odor = replace(odor, odor == "m", "musty"),
           odor = replace(odor, odor == "n", "none"),
           odor = replace(odor, odor == "p", "pungent"),
           odor = replace(odor, odor == "s", "spicy"))
  
  # change labels of gill_spacing
  data <- data %>% 
    mutate(gill_spacing = replace(gill_spacing, gill_spacing == "c", "close"),
           gill_spacing = replace(gill_spacing, gill_spacing == "w", "crowded"),
           gill_spacing = replace(gill_spacing, gill_spacing == "d", "distant"))
  
  # change labels of gill_size
  data <- data %>% 
    mutate(gill_size = replace(gill_size, gill_size == "b", "broad"),
           gill_size = replace(gill_size, gill_size == "n", "narrow"))
  
  # change labels of gill_color
  data <- data %>% 
    mutate(gill_color = replace(gill_color, gill_color == "k", "black"),
           gill_color = replace(gill_color, gill_color == "n", "brown"),
           gill_color = replace(gill_color, gill_color == "b", "buff"),
           gill_color = replace(gill_color, gill_color == "h", "chocolate"),
           gill_color = replace(gill_color, gill_color == "c", "cinnamon"),
           gill_color = replace(gill_color, gill_color == "g", "gray"),
           gill_color = replace(gill_color, gill_color == "r", "green"),
           gill_color = replace(gill_color, gill_color == "o", "orange"),
           gill_color = replace(gill_color, gill_color == "p", "pink"),
           gill_color = replace(gill_color, gill_color == "u", "purple"),
           gill_color = replace(gill_color, gill_color == "e", "red"),
           gill_color = replace(gill_color, gill_color == "w", "white"),
           gill_color = replace(gill_color, gill_color == "y", "yellow"))
  
  # change labels of stalk_color
  data <- data %>% 
    mutate(stalk_color = replace(stalk_color, stalk_color == "n", "brown"),
           stalk_color = replace(stalk_color, stalk_color == "b", "buff"),
           stalk_color = replace(stalk_color, stalk_color == "c", "cinnamon"),
           stalk_color = replace(stalk_color, stalk_color == "g", "gray"),
           stalk_color = replace(stalk_color, stalk_color == "o", "orange"),
           stalk_color = replace(stalk_color, stalk_color == "p", "pink"),
           stalk_color = replace(stalk_color, stalk_color == "e", "red"),
           stalk_color = replace(stalk_color, stalk_color == "w", "white"),
           stalk_color = replace(stalk_color, stalk_color == "y", "yellow"))
  
  # change labels of spore_color
  data <- data %>% 
    mutate(spore_color = replace(spore_color, spore_color == "k", "black"),
           spore_color = replace(spore_color, spore_color == "n", "brown"),
           spore_color = replace(spore_color, spore_color == "b", "buff"),
           spore_color = replace(spore_color, spore_color == "h", "chocolate"),
           spore_color = replace(spore_color, spore_color == "r", "green"),
           spore_color = replace(spore_color, spore_color == "o", "orange"),
           spore_color = replace(spore_color, spore_color == "u", "purple"),
           spore_color = replace(spore_color, spore_color == "w", "white"),
           spore_color = replace(spore_color, spore_color == "y", "yellow"))
  
  # save the clean data set
  write_csv(data, out_file)
}


# call main function
main()
