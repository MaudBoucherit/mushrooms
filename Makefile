# Driver script
# Maud Boucherit
# 2017-12-10
#
# This script runs all the scripts necessary to build the report of the mushrooms project
#
# usage: make all

# run from top to bottom
all: doc/report.md

# Clean the data
results/clean_mushrooms.csv: src/clean_data.R data/mushrooms.csv
	Rscript src/clean_data.R data/mushrooms.csv $@

# Produce decriptive plots
results/figures: src/descr_stat.R results/clean_mushrooms.csv
	Rscript src/descr_stat.R results/clean_mushrooms.csv

# Build a decision tree
results/tree: src/decision_tree.R results/clean_mushrooms.csv
	Rscript src/decision_tree.R results/clean_mushrooms.csv results/predictions.csv results/tree.png

# Knit the report as a md file
doc/report.md: src/report.Rmd results/figures results/tree
	Rscript -e "ezknitr::ezknit('src/report.Rmd', out_dir = 'doc')"

# clean up intermediate files
clean:
	rm -f results/figures/*.png
	rm -f results/*.csv
	rm -f results/*.png
	rm -f doc/report.md doc/report.html
