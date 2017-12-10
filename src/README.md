# Mushrooms Project - Source
This folder contains the scripts for the Mushrooms Project.


## Clean data
Released on 2017-12-07   
Last update on 2017-12-08   

[clean_data.R](clean_data.R) is a R script that cleans the data. It mainly changes the levels of the variables (the levels are one letter only in the raw data).  

**usage:** `Rscript src/clean_data.R data/mushrooms.csv results/clean_mushrooms.csv`


## Data description
Released on 2017-12-07   
Last update on 2017-12-09   

[descr_stat.R](descr_stat.R) is a R script that does some description of the clean data. It creates and saves bar plots, one for each explanatory variable.

**usage:** `Rscript src/descr_stat.R results/clean_mushrooms.csv`


## Modelling - Decision tree
Released on 2017-12-09   
Last update on 2017-12-09   

[decision_tree.R](decision_tree.R) is a R script that build a decision tree to the data and produce the associate visualization.   
1. load the data and split it into training and test sets   
2. build a decision tree fitting the training set   
3. plot the decision tree and save as png   
4. calculate prediction rates and save as csv   

**usage:** `Rscript src/decision_tree.R results/clean_mushrooms.csv results/predictions.csv results/tree.png`


## Report
Released on 2017-12-10   
Last update on 2017-12-10   

[report.Rmd](report.Rmd) is a R Markdown document containing all the results obtained during this project. It first displays plots to describe the data, then some information about the decision tree we built.   

**usage:** `Rscript -e 'ezknitr::ezknit("src/report.Rmd", out_dir = "doc")'
`
