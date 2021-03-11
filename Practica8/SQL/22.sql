use SQL1NORMALDATES;

select num, name, surname from (
select num, name, surname, datediff(curdate(), start_date)/365 as Years
from EMPLOYEES where num in (select manager from EMPLOYEES)) as W where W.Years>5;