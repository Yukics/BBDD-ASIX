use P04_queries01;

#Inner Join
select E.num, E.name,E.surname, concat(M.name,' ',M.surname) as manager, E.start_date,E.salary,E.commission,D.name,O.name
from EMPLOYEES E
inner join DEPARTMENTS D on E.dept_num = D.num
inner join OCCUPATIONS O on E.occu_code = O.code
inner join EMPLOYEES M on  M.num = E.manager
where E.salary>2000;

#Left outer join
select E.num, E.name,E.surname, concat(M.name,' ',M.surname) as manager, E.start_date,E.salary,E.commission,D.name,O.name
from EMPLOYEES E
left outer join DEPARTMENTS D on E.dept_num = D.num
left outer join OCCUPATIONS O on E.occu_code = O.code
left outer join EMPLOYEES M on  M.num = E.manager
where E.salary>2000;

#Rgight outer gives basically the inner join
select EMPLOYEES.num, EMPLOYEES.name,EMPLOYEES.surname, concat(E.name,' ',E.surname) as manager, EMPLOYEES.start_date,EMPLOYEES.salary,EMPLOYEES.commission,D.name,O.name from EMPLOYEES
right outer join DEPARTMENTS D on EMPLOYEES.dept_num = D.num
right outer join OCCUPATIONS O on EMPLOYEES.occu_code = O.code
right outer join EMPLOYEES E on E.manager = EMPLOYEES.num
where EMPLOYEES.salary>2000