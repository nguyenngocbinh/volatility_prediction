
## list parquet file names
import glob
files_book_train = glob.glob("data/book_train.parquet/*/*.parquet")
files_book_test = glob.glob("data/book_test.parquet/*/*.parquet")
files_trade_train = glob.glob("data/trade_train.parquet/*/*.parquet")
files_trade_test = glob.glob("data/trade_test.parquet/*/*.parquet")

import pandas as pd
import pyarrow.parquet as pq
df_book_test = pq.read_table(files_book_test[0]).to_pandas()

df_book_train = pq.read_table(files_book_train[0]).to_pandas()

df_book_train = []
for infile in files_book_train:
    data = pq.read_pandas(infile).to_pandas()
    # store DataFrame in list
    df_book_train.append(data)
# see pd.concat documentation for more info
df_book_train = pd.concat(df_book_train)


import numpy as np

np.unique(df_book_train.time_id)

df_book_train.head

import mxnet as mx

from gluonts.model.deepar import DeepAREstimator
from gluonts.trainer import Trainer

mx.gluon.

estimator = DeepAREstimator(freq="5min", 
                            prediction_length=36, 
                            trainer=Trainer(epochs=10))
                            


import os
for dirname, _, filenames in os.walk('data\\book_train.parquet\\'):
    for filename in filenames:
        print(os.path.join(dirname, filename))
        
filenames.append(filename)
filenames.count()

x = [1,10]
x.count(3)
x.index()

import pyarrow as pa
import pandas as pd



pd.DataFrame(sys.path)

# List of numbers
numbers = [6, 5, 3, 8, 4, 2, 5, 4, 11]

# variable to store the sum
sum = 0

# iterate over the list
for val in numbers:
    sum = sum+val

print("The sum is", sum)

import tqdm as np

modelti
