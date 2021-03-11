#Code and title of the movies that in its title there are some of the following words: "kill", "pirates", "war", "man". Order the result by movie title.

use imdb_small;

select id, name from movies where 
name like '%kill%'
or name like '%pirates%'
or name like '%war%'
or name like '%man%';