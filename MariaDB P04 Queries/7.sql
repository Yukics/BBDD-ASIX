use P04_queries01;

#Inner Join
select EMPLOYEES.num, EMPLOYEES.name,EMPLOYEES.surname, concat(E.name,' ',E.surname) as manager, EMPLOYEES.start_date,EMPLOYEES.salary,EMPLOYEES.commission,D.name,O.name from EMPLOYEES
inner join DEPARTMENTS D on EMPLOYEES.dept_num = D.num
inner join OCCUPATIONS O on EMPLOYEES.occu_code = O.code
inner join EMPLOYEES E on E.manager = EMPLOYEES.num
where EMPLOYEES.salary>2000

#Left outer join
select EMPLOYEES.num, EMPLOYEES.name,EMPLOYEES.surname, concat(E.name,' ',E.surname) as manager, EMPLOYEES.start_date,EMPLOYEES.salary,EMPLOYEES.commission,D.name,O.name from EMPLOYEES
left outer join DEPARTMENTS D on EMPLOYEES.dept_num = D.num
left outer join OCCUPATIONS O on EMPLOYEES.occu_code = O.code
left outer join EMPLOYEES E on E.manager = EMPLOYEES.num
where EMPLOYEES.salary>2000

#Rgight outer gives basically the inner join
select EMPLOYEES.num, EMPLOYEES.name,EMPLOYEES.surname, concat(E.name,' ',E.surname) as manager, EMPLOYEES.start_date,EMPLOYEES.salary,EMPLOYEES.commission,D.name,O.name from EMPLOYEES
right outer join DEPARTMENTS D on EMPLOYEES.dept_num = D.num
right outer join OCCUPATIONS O on EMPLOYEES.occu_code = O.code
right outer join EMPLOYEES E on E.manager = EMPLOYEES.num
where EMPLOYEES.salary>2000