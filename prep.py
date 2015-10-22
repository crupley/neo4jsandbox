
import numpy as np
import pandas as pd

# make movie list
me = pd.read_table('~/gal/w7/graphs/data/imdb_edges.tsv', sep='\t')
print me.head()

movielist = me['Target'].unique()
print movielist.shape

movielist = pd.DataFrame(movielist, columns = ['name'])
movielist.to_csv('data/movies.csv', sep=',', columns=['name'], index=False)