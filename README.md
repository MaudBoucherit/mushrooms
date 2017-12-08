# Mushrooms Project
This project's goal is to predict rather a mushroom is poisonous, given some information about the mushroom outlook.

Author: Maud Boucherit   
Released on 2017-11-23    


During my free time, I enjoy getting lost in the woods. Usually, I can find my way back, but I'm afraid one day I might be lost for good. Identifying non-poisonous mushroom seems like a vital skill. Therefore, can I predict if a mushroom is poisonous based on some of its features?    

I will build a decision tree. I want to minimalize the false negative (i.e. minimalize saying a mushroom is not poisonous when it is) so the probability of getting a false negative will be my main score function.


## Data

Stored [here](data/mushrooms.csv), added on 2017-11-23   

I am using the kaggle's mushrooms dataset (from [here](https://www.kaggle.com/uciml/mushroom-classification)). It contains information about several mushrooms species like their cap's colour, their odor, or if they are poisonous. I want to adjust a decision tree using poisonous or not as my labels, and with the features:   
- cap-shape,  
- cap-color,  
- odor,  
- gill-spacing,  
- gill-size,  
- gill-color,  
- stalk-color,  
- spore-print-color,  
- habitat.  

## Scripts

- Clean the data: [clean_data.R](clean_data.R)    
**usage:** `Rscript src/clean_data.R data/mushrooms.csv results/clean_mushrooms.csv`   

- Describe the data: [descr_stat.R](descr_stat.R)    
**usage:** `Rscript src/descr_stat.R results/clean_mushrooms.csv`   

- Fit a decision tree on the data: [decision_tree.py](decision_tree.py)    
**usage:** `python src/decision_tree.py results/clean_mushrooms.csv`
