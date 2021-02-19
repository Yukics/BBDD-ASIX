use P04_queries01;

#This query is impossible if there is not NULl record on Occupations due to that im just comparing with occu_code
select concat(e.name, ' ', e.surname) as FullName, o.name from EMPLOYEES as e
left outer join OCCUPATIONS as o on e.occu_code = o.code
where (e.occu_code not in ('MAN','EMP') or e.occu_code is null) and e.salary > 2000
order by o.name, FullName;