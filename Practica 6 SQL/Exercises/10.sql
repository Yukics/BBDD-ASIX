#List of directors sorted by full name, indicating the number of films they have directed.

use imdb_small;

select concat(d.first_name, " ",d.last_name) as directors_name, count(md.movies_id) as count  
from movies_directors as md, directors as d
where d.id=md.directors_id
group by directors_id;