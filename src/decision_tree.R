# decision_tree.py
# Maud Boucherit, 2017-12-09
#
# This script build a decision tree fitting the data
# 1. load the data and split it into training and test sets
# 2. build a decision tree fitting the training set
# 3. plot the decision tree and save as png
# 4. calculate prediction rates and save as csv
#
# Input: a csv file, the clean data
#
# Output: a csv file, the error rates
#         a png file, a visualisation of the tree
#
# Usage: python src/decision_tree.py results/clean_mushrooms.csv results/prediction_rate.csv results/tree.png

# library
library(tidyverse)
library(rpart)
library(rattle)
library(rpart.plot)
library(RColorBrewer)

# read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
mushrooms <- args[1]
out_pred <- args[2]
out_tree <- args[3]

# define main function
main <- function(){
  
  # read in data
  data <- read_csv(mushrooms)
  
  data <- data %>% 
    mutate(class        = factor(class),
           cap_shape    = factor(cap_shape),
           cap_color    = factor(cap_color),
           odor         = factor(odor),
           gill_spacing = factor(gill_spacing),
           gill_size    = factor(gill_size),
           gill_color   = factor(gill_color),
           stalk_color  = factor(stalk_color),
           spore_color  = factor(spore_color))
  
  # split the data
  res <- split_data(data)
  train <- res[[1]]
  test <- res[[2]]
  
  # build tree
  tree <- rpart(class ~ cap_shape + cap_color + odor + gill_spacing + 
                  gill_size + gill_color + stalk_color + spore_color, 
                data = train, 
                method = "class")
  
  # plot tree 
  png(out_tree)
  fancyRpartPlot(tree)
  dev.off()
  
  # save prediction
  y_pred <- predict(tree, test, type = "class")
  
  pred_rate <- data.frame('count' = c('pred.poisonous', 'pred.edible'),
                          'real.poisonous' = c(sum(y_pred[test$class == 1] == 1), sum(y_pred[test$class == 1] == 0)),
                          'real.edible' = c(sum(y_pred[test$class == 0] == 1), sum(y_pred[test$class == 0] == 0)))
  write.csv(pred_rate, file = out_pred)
}

split_data <- function(data, prop = 0.2) {
  ## Split a data frame into training and test sets.
  ##
  ## Parameter:
  ##    data: a data frame
  ##    prop: the test set proportion, default is 20%
  ##
  ## Returns:
  ##    train: a data frame containing the training samples
  ##    test: a data frame containing the test samples
  
  n_row <- length(data$class)
  u <- runif(n_row)
  
  train <- data[u > prop,]
  test <- data[u <= prop,]
  
  res <- list(train, test)
  return(res)
}

# call main function
main()
