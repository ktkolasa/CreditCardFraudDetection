from pandas import read_csv
from config import DATASET_FILE


df = read_csv(f'data/{DATASET_FILE}')
print(df)