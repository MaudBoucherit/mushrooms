# Driver script
# Maud Boucherit
# 2017-12-10
#
# This script runs all the scripts necessary to build the report of the mushrooms project
#
# usage: bash run_all.sh


# Clean the data
Rscript src/clean_data.R data/mushrooms.csv results/clean_mushrooms.csv

# Produce decriptive plots
Rscript src/descr_stat.R results/clean_mushrooms.csv

# Build a decision tree
Rscript src/decision_tree.R results/clean_mushrooms.csv results/predictions.csv results/tree.png

# Knit the report as a md file
Rscript -e "ezknitr::ezknit('src/report.Rmd', out_dir = 'doc')"
