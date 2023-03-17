#!/bin/sh
. ./cred
if [ $# -eq 0 ]; then
    DATASET_ID="wjburns/common-password-list-rockyoutxt"
    echo "No arguments provided, setting dataset name to {$DATASET_ID}"
else
    DATASET_ID=$1
fi
export KAGGLE_USERNAME=$KAGGLE_USERNAME
export KAGGLE_KEY="$KAGGLE_KEY"
kaggle datasets download $DATASET_ID
dataset_name=$(basename "$DATASET_ID")
zip_file_name="${dataset_name}.zip"
unzip $zip_file_name -d data/
rm zip_file_name
