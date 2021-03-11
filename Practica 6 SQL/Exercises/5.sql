#Title and year of premiere of all those films that we do not know the director. order the results by film title (clue: NOT IN (subselect)).

use imdb_small;

select  movies.id, movies.name, movies.year 
from movies 
where movies.id 
not in (select movies_id from movies_directors)
order by movies.name;