#Name of the actors with whom Uma Thurman worked. Also indicate the full name and the year of the premiere of the film. 
#Order the results by movie name and actor full name. Obviously, Uma Thurman must not be in the results.

use imdb_small;

select concat(a.first_name, " ",a.last_name) as actor_name, m.name, m.year
from actors as a, roles as r, movies as m
where r.directors_id in
      (select roles.directors_id from roles where roles.actors_id in
                    (select a.id from actors as a where a.first_name="Uma" and a.last_name="Thurman"))
and r.actors_id=a.id 
and r.directors_id=m.id
and r.actors_id <> (select a.id from actors as a where a.first_name="Uma" and a.last_name="Thurman");

