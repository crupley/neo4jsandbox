
import numpy as np
import pandas as pd

# toy example
# make files:

# ex_edges = pd.read_table('~/gal/w7/graphs/data/example_edges.tsv', sep='\t',
# 						 header=None)
# ex_edges.columns = ['actor', 'movie']






# make movie list
me = pd.read_table('~/gal/w7/graphs/data/imdb_edges.tsv', sep='\t')
print me.head()

movielist = me['Target'].unique()
print movielist.shape

movielist = pd.DataFrame(movielist, columns = ['name'])
movielist.to_csv('data/movies.csv', sep=',', columns=['name'], index=False)


# make connections csv
me.to_csv('data/imdb_edges.csv', sep=',', index=False)

# find movies
movielist[movielist.name.str.match('Lord').fillna(False)]