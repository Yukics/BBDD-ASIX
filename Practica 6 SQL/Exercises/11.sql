#List of actors with surname starting with a ‘P’, indicating the number of films in which they have participated ordered by the number of films descendent. 

use imdb_small;

select concat(a.first_name, " ",a.last_name) as actors_name, count(r.directors_id) as count  
from  actors as a, roles as r
where a.id=r.actors_id
and a.last_name like "P%"
group by r.actors_id;

