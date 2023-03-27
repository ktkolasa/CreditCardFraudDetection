What does this project consists of:
-shell script for downloading dataset

# How to get dataset

1. Set up an account on kaggle.com
2. Make sure you have kaggle installed in your venv.
3. Go to https://www.kaggle.com/<username>/account at Create New API Token
 and export env variables:
>export KAGGLE_USERNAME=<your_username>
> 
>export KAGGLE_KEY=<your_key>
>
4. Download dataset to your working directory:
>kaggle datasets download mlg-ulb/creditcardfraud
> 
Here's the full documentation: https://github.com/Kaggle/kaggle-api

3a. Alternatively save the credentials form 3. to cred file at sources root
to download the csv straight to the data/ directory:

>sh ./get_kaggle_dataset.sh 

# About the dataset
Best read about it on https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud

The datatset features 28 numerical parameters after PCA, time in seconds (elapsed since the first transaction) and amount of the transaction as well as class- 0 for regular transaction and 1 for fraudulent one.

The transactions were made by European cardholders, 492 out of 284807 are frauds, so only 0,15% of all transactions.


# Preprocessing
![alt text for screen readers](img/Corr.png "Text to show on mouseover")

