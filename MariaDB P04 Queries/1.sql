use P04_queries01;

#Explicita
select concat(e.name,' ', e.surname) as name, e.salary, O.name as Occupation
from EMPLOYEES as e
join OCCUPATIONS O on O.code = e.occu_code
where e.salary > 2000 or e.salary< 1100;

#Implicita
select concat(e.name,' ', e.surname) as name, e.salary, o.name as Occupation
from EMPLOYEES as e, OCCUPATIONS as o
where (e.salary > 2000 or e.salary< 1100) and o.code = e.occu_code;

#Left outer join
select concat(e.name,' ', e.surname) as name, e.salary, O.name as Occupation
from EMPLOYEES as e
left outer join OCCUPATIONS O on O.code = e.occu_code
where e.salary > 2000 or e.salary< 1100;

#Right outer join
select concat(e.name,' ', e.surname) as name, e.salary, o.name as Occupation
from OCCUPATIONS as o
right outer join EMPLOYEES e on o.code = e.occu_code
where e.salary > 2000 or e.salary< 1100;

