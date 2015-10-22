
//Create actors

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Users/crupley/DS/projects/neo4jsandbox/data/actors.csv" AS row
CREATE (:actor {actorName: row.name});

// Create movies
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Users/crupley/DS/projects/neo4jsandbox/data/movies.csv" AS row
CREATE (:movie {movieName: row.name});

// Create connections
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///Users/crupley/DS/projects/neo4jsandbox/data/imdb_edges.csv" AS row
MATCH (actor:actor {actorName: row.Source})
MATCH (movie:movie {movieName: row.Target})
MERGE (actor)-[:appears_in]->(movie);