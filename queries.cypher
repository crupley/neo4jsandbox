
// interesting queries:

// find all of an actor's movies
MATCH (a:actor {actorName:'Kevin Bacon'})-[r:appears_in]->() RETURN r;

// find all actors in a movie
MATCH (m:movie {movieName:'X-Men: First Class'})<-[r:appears_in]-()
RETURN r;

// shortest path between actors
MATCH (kevin:actor {actorName:"Kevin Bacon" }),(bill:actor { actorName:"Bill Murray" }),
  p = shortestPath((kevin)-[:appears_in*..15]-(bill))
RETURN p

// find all shortest paths between actors
MATCH (kevin:actor {actorName:"Kevin Bacon" }),(bill:actor { actorName:"Bill Murray" }),
  p = allShortestPaths((kevin)-[:appears_in*..15]-(bill))
RETURN p

//3 actor overlap
MATCH (steve:actor {actorName:'Steve Carell'})-[s:appears_in]->(),
	(will:actor { actorName:'Will Ferrell'})-[w:appears_in]->(),
	(paul:actor { actorName:'Paul Rudd'})-[p:appears_in]->()
RETURN s, w, p;