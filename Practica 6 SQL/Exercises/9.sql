#Name of the directors who have not been actors in their films, sorted by code.

use imdb_small;

select concat(d.first_name, " ", d.last_name) as directors_name 
from directors as d where d.id not in (
	select d.id from actors as a, directors as d where d.first_name=a.first_name and d.last_name=a.last_name)
order by d.id;