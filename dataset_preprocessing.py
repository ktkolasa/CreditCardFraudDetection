"""
Methods for basic dataset checks before its fed to some ML model.
Also some charts being drawn. #TODO verify that promises after the code is there
"""

#corr

from matplotlib import pyplot as plt

import pandas as pd
from config import DATASET_FILE
import numpy as np
import seaborn as sns

def draw_correlation_matrix(df):
    corr = df.corr()
    sns.heatmap(corr)
    plt.show()

def show_stats(df):
    agg_values = df.agg([min, max, np.mean, np.var, np.std])
    agg_values.to_csv('agg_values.csv')


if __name__ == '__main__':
    data = pd.read_csv(f'data/{DATASET_FILE}')
    draw_correlation_matrix(data)
    show_stats(data)
    #todo rename functions so that they reflect actual action + add saving img and parmetrize folder names