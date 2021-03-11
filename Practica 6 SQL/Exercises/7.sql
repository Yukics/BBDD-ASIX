#Title of the film, premiere year and full name of the director of all those films in which the director is also an actor in their own films. Sort the results by artist name.

use imdb_small;

select m.name, m.year, concat(a.first_name, " ",a.last_name) as artist_name
from movies as m, actors as a, roles as r, directors as d, movies_directors as md

where a.first_name=d.first_name
and a.last_name=d.last_name
and md.directors_id=d.id
and r.actors_id=a.id
and r.directors_id=m.id
and m.id=md.movies_id

order by artist_name;

