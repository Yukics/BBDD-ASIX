use P04_queries01;

#Explicit
select e.surname, O.name from EMPLOYEES as e
join OCCUPATIONS O on e.occu_code = O.code
where dept_num=20;

#Implicit
select e.surname, O.name from EMPLOYEES as e, OCCUPATIONS as O
where dept_num=20 and e.occu_code = O.code;

#Left outer join
select e.surname, O.name from EMPLOYEES as e
left outer join OCCUPATIONS O on e.occu_code = O.code
where dept_num=20;

#Right outer join
select e.surname, O.name from OCCUPATIONS as O
right outer join EMPLOYEES e on e.occu_code = O.code






