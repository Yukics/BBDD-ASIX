#Name of the director, premiere year and full name and roles of the actors in the movie "Lost in Translation".

use imdb_small;

select concat(directors.first_name," ", directors.last_name) as director_name, movies.name as movie_title, 
movies.year, concat(actors.first_name, " ",actors.last_name) as actor_name, roles.role

from actors, roles, movies

inner join directors on directors.id=(SELECT directors_id FROM movies_directors
	where movies_id=(select m.id from movies as m where m.name="Lost in Translation"))

where actors.id in (SELECT roles.actors_id FROM roles
	where directors_id=(select m.id from movies as m where m.name="Lost in Translation"))

and roles.actors_id=actors.id
and roles.directors_id=movies.id;



