#Title and year of premiere of the movies directed by Ethan Coen after 1996 order by year.

use imdb_small;

select movies.name, movies.year from movies_directors
inner join movies on movies_directors.movies_id=movies.id
inner join directors on movies_directors.directors_id=directors.id
where directors.first_name="Ethan" and directors.last_name="Coen"
and movies.year>1996
order by movies.year;
