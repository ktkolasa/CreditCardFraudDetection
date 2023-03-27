#!/bin/sh
# This script downloads dataset (mlg-ulb/creditcardfraud by default)
# from Kaggle using credentials saved in cred file,
# unpacks the dataset and saves file(s) to 'data/' subdirectory.

. ./cred
if [ $# -eq 0 ]; then
    #. ./config.py TODO load that name from python? -> keep it in one place only
    DATASET_ID="mlg-ulb/creditcardfraud"
    echo "No arguments provided, setting dataset name to {$DATASET_ID}"
else
    DATASET_ID=$1
fi
export KAGGLE_USERNAME=$KAGGLE_USERNAME
export KAGGLE_KEY="$KAGGLE_KEY"
kaggle datasets download $DATASET_ID
dataset_name=$(basename "$DATASET_ID")
zip_file_name="${dataset_name}.zip"
mkdir data
unzip $zip_file_name -d data/
rm zip_file_name
