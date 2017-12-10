# Mushrooms Project
This project's goal is to predict rather a mushroom is poisonous, given some information about the mushroom outlook.

Author: Maud Boucherit   
Released on 2017-11-23   
Last update: 2017-12-09


During my free time, I enjoy getting lost in the woods. Usually, I can find my way back, but I'm afraid one day I might be lost for good. Identifying non-poisonous mushroom seems like a vital skill. Therefore, can I predict if a mushroom is poisonous based on some of its features?    

I will build a decision tree. I want to minimalize the false negative (i.e. minimalize saying a mushroom is not poisonous when it is) so the probability of getting a false negative will be my main score function.

## Run this project

To run this project, you have to clone it, then run the run_all.sh on a bash shell:
```bash
bash run_all.sh
```

## Data ([data](data/))

Stored [here](data/mushrooms.csv), added on 2017-11-23   

I am using the kaggle's mushrooms dataset (from [here](https://www.kaggle.com/uciml/mushroom-classification)). It contains information about several mushrooms species like their cap's colour, their odor, or if they are poisonous. I want to adjust a decision tree using poisonous or not as my labels, and with the features:   
- cap-shape,  
- cap-color,  
- odor,  
- gill-spacing,  
- gill-size,  
- gill-color,  
- stalk-color,  
- spore-print-color.   

If you want more information about the raw data, please read [data/README.md](data/README.md).

## Scripts ([src](src/))

- Clean the data: [clean_data.R](src/clean_data.R)    
**usage:** `Rscript src/clean_data.R data/mushrooms.csv results/clean_mushrooms.csv`   

- Describe the data: [descr_stat.R](src/descr_stat.R)    
**usage:** `Rscript src/descr_stat.R results/clean_mushrooms.csv`   

- Fit a decision tree on the data: [decision_tree.R](src/decision_tree.R)    
**usage:** `Rscript src/decision_tree.R results/clean_mushrooms.csv results/predictions.csv results/tree.png`   

- Build a report: [report.Rmd](report.Rmd)    
**usage:** `Rscript -e 'ezknitr::ezknit("src/report.Rmd", out_dir = "doc")'`   

If you want more information about these script, please read [src/README.md](src/README.md).

## Documentation ([doc](doc/))

In this folder, you can find a report summarizing the important results from this project.

## Results ([results](results/))

This folder contains files generated during cleanup and analysis done during the Mushrooms Project. Most of them are displayed in the report.   

If you want more information about these files, please read [results/README.md](results/README.md).
