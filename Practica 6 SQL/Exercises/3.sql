#Title of films directed by Ethan Coen order by title.

use imdb_small;

select movies.name from movies_directors
inner join movies on movies_directors.movies_id=movies.id
inner join directors on movies_directors.directors_id=directors.id
where directors.first_name="Ethan" and directors.last_name="Coen"
order by movies.name;
