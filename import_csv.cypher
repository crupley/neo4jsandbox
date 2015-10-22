
// Create actors

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:~/DS/projects/neo4jsandbox/data/actors.csv" AS row
CREATE (:actor {actorName: row.name});
