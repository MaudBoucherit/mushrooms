# descr_stat.R
# Maud Boucherit, 2017-12-10
#
# This script create and save a bar plot by explanatory variable
#
# Input: a csv file, the clean data
#
# Usage: Rscript src/descr_stat.R results/clean_mushrooms.csv

# library
library(tidyverse)

# read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
mushrooms <- args[1]

# define main function
main <- function(){

  # read in data
  data <- read_csv(mushrooms)

  data <- data %>%
    mutate(class        = factor(class),
           cap_shape    = factor(cap_shape, levels = c("sunken", "bell", "convex", "flat", "knobbed", "conical")),
           cap_color    = factor(cap_color, levels = c("green", "purple", "cinnamon", "white", "gray", "brown", "red", "pink", "yellow", "buff")),
           odor         = factor(odor, levels = c("almond", "anise", "none", "musty", "creosote", "pungent", "spicy", "fishy", "foul")),
           gill_spacing = factor(gill_spacing, levels = c("crowded", "close")),
           gill_size    = factor(gill_size),
           gill_color   = factor(gill_color, levels = c("orange", "red", "purple", "brown", "black", "white", "yellow", "pink", "gray", "chocolate", "green", "buff")),
           stalk_color  = factor(stalk_color, levels = c("red", "orange", "gray", "white", "pink", "brown", "yellow", "cinnamon", "buff")),
           spore_color  = factor(spore_color, levels = c("yellow", "orange", "purple", "buff", "brown", "black", "white", "chocolate", "green")))

  # plot cap_shape by class
  ggplot(data, aes(x=cap_shape, fill=class)) +
    geom_bar(position = "fill") +
    ylab("proportion") +
    scale_fill_manual("poisonous",
                      labels = c("no", "yes"),
                      values = c("dodgerblue2", "firebrick2")) +
    geom_text(aes(label = ..count..),
              stat= "count", position = position_fill(vjust=.5)) +
    coord_flip() +
    theme_light()

  ggsave("results/figures/cap_shape.png")

  # plot cap_color by class
  ggplot(data, aes(x=cap_color, fill=class)) +
    geom_bar(position = "fill") +
    ylab("proportion") +
    scale_fill_manual("poisonous",
                      labels = c("no", "yes"),
                      values = c("dodgerblue2", "firebrick2")) +
    geom_text(aes(label = ..count..),
              stat= "count", position = position_fill(vjust=.5)) +
    coord_flip() +
    theme_light()

  ggsave("results/figures/cap_color.png")

  # plot odor by class
  ggplot(data, aes(x=odor, fill=class)) +
    geom_bar(position = "fill") +
    ylab("proportion") +
    scale_fill_manual("poisonous",
                      labels = c("no", "yes"),
                      values = c("dodgerblue2", "firebrick2")) +
    geom_text(aes(label = ..count..),
              stat= "count", position = position_fill(vjust=.5)) +
    coord_flip() +
    theme_light()

  ggsave("results/figures/odor.png")

  # plot gill_spacing by class
  ggplot(data, aes(x=gill_spacing, fill=class)) +
    geom_bar(position = "fill") +
    ylab("proportion") +
    scale_fill_manual("poisonous",
                      labels = c("no", "yes"),
                      values = c("dodgerblue2", "firebrick2")) +
    geom_text(aes(label = ..count..),
              stat= "count", position = position_fill(vjust=.5)) +
    coord_flip() +
    theme_light()

  ggsave("results/figures/gill_spacing.png")

  # plot gill_size by class
  ggplot(data, aes(x=gill_size, fill=class)) +
    geom_bar(position = "fill") +
    ylab("proportion") +
    scale_fill_manual("poisonous",
                      labels = c("no", "yes"),
                      values = c("dodgerblue2", "firebrick2")) +
    geom_text(aes(label = ..count..),
              stat= "count", position = position_fill(vjust=.5)) +
    coord_flip() +
    theme_light()

  ggsave("results/figures/gill_size.png")

  # plot gill_color by class
  ggplot(data, aes(x=gill_color, fill=class)) +
    geom_bar(position = "fill") +
    ylab("proportion") +
    scale_fill_manual("poisonous",
                      labels = c("no", "yes"),
                      values = c("dodgerblue2", "firebrick2")) +
    geom_text(aes(label = ..count..),
              stat= "count", position = position_fill(vjust=.5)) +
    coord_flip() +
    theme_light()

  ggsave("results/figures/gill_color.png")

  # plot stalk_color by class
  ggplot(data, aes(x=stalk_color, fill=class)) +
    geom_bar(position = "fill") +
    ylab("proportion") +
    scale_fill_manual("poisonous",
                      labels = c("no", "yes"),
                      values = c("dodgerblue2", "firebrick2")) +
    geom_text(aes(label = ..count..),
              stat= "count", position = position_fill(vjust=.5)) +
    coord_flip() +
    theme_light()

  ggsave("results/figures/stalk_color.png")

  # plot spore_color by class
  ggplot(data, aes(x=spore_color, fill=class)) +
    geom_bar(position = "fill") +
    ylab("proportion") +
    scale_fill_manual("poisonous",
                      labels = c("no", "yes"),
                      values = c("dodgerblue2", "firebrick2")) +
    geom_text(aes(label = ..count..),
              stat= "count", position = position_fill(vjust=.5)) +
    coord_flip() +
    theme_light()

  ggsave("results/figures/spore_color.png")
}


# call main function
main()
