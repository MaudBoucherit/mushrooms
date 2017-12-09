# Mushrooms Project - Results
This folder contains files generated during cleanup and analysis done during the Mushrooms Project.

Author: Maud Boucherit   
Released on 2017-11-23   
Last update: 2017-12-09   

## [clean_mushroons.csv](clean_mushrooms.csv)

A cleaner version of [data/mushrooms.csv](../data/mushrooms.csv). It was obtained by running [src/clean_data.R](../src/clean_data.R):   
```bash
Rscript src/clean_data.R data/mushrooms.csv results/clean_mushrooms.csv
```

## [tree.png](tree.png)

A visualization of the decision tree build on the [clean_mushroons.csv](clean_mushrooms.csv). It was obtained by running [src/decision_tree.R](../src/decision_tree.R):   
```bash
Rscript src/decision_tree.R results/clean_mushrooms.csv results/predictions.csv results/tree.png
```

## [predictions.csv](predictions.csv)

A csv file containing the prediction rates obtained by testing the tree defined by [tree.png](tree.png). It was obtained by running [src/decision_tree.R](../src/decision_tree.R):   
```bash
Rscript src/decision_tree.R results/clean_mushrooms.csv results/predictions.csv results/tree.png
```

## [figures/](figures/)

A folder containing bar plots. There is a plot by feature from [data/clean_mushrooms.csv](clean_mushrooms.csv). It was obtained by running [src/descr_stat.R](../src/descr_stat.R):   
```bash
Rscript src/descr_stat.R results/clean_mushrooms.csv
```
