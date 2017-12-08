# Mushrooms Project - Source
This folder contains the scripts for the Mushrooms Project.

## Main Script
Released on 2017-11-23   
Last update on 2017-11-23   

[script.ipynb](script.ipynb) is a Jupyter notebook loading mushrooms.csv using the `pandas` package. It also display its 5th first rows and information about the data frame.  


## Clean data
Released on 2017-12-07   
Last update on 2017-12-07   

[clean_data.R](clean_data.R) is a R script that cleans the data. It mainly changes the levels of the variables (the levels are one letter only in the raw data).  

**usage:** `Rscript src/clean_data.R data/mushrooms.csv results/clean_mushrooms.csv`


## Data description
Released on 2017-12-07   
Last update on 2017-12-07   

[descr_stat.R](descr_stat.R) is a R script that does some description of the clean data. It computes some descriptive statistics and two-dimension plots.

**usage:** `Rscript src/descr_stat.R results/clean_mushrooms.csv`
