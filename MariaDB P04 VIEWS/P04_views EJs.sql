use P04_views;

#(1)
#Esta es la query que nos devuelve lo que deseamos
select d.num, d.name, d.town_code, T.name, count(E.num) from DEPARTMENTS as d
left outer join TOWNS T on d.town_code = T.code
left outer join EMPLOYEES E on d.num = E.dept_num
group by d.num;

#Aqui agregamos esa query como vista (la primera)
create view V_DEPARTMENTS as select d.num, d.name, d.town_code, T.name as TownName, count(E.num) from DEPARTMENTS as d
left outer join TOWNS T on d.town_code = T.code
left outer join EMPLOYEES E on d.num = E.dept_num
group by d.num;

#Seleccionamos la vista
select * from V_DEPARTMENTS;

#(2)
#Esta es la query de la segunda vista que utilizaremos para alterar la primera
select d.num, d.name, d.town_code, T.name, count(E.num), avg(E.salary) from DEPARTMENTS as d
left outer join TOWNS T on d.town_code = T.code
left outer join EMPLOYEES E on d.num = E.dept_num
group by d.num;

#Alteramos la view V_DEPARTMENTS con la media de los salarios
alter view V_DEPARTMENTS as select d.num, d.name, d.town_code, T.name as TownName, count(E.num) as CounEmployees, avg(E.salary) as salary from DEPARTMENTS as d
left outer join TOWNS T on d.town_code = T.code
left outer join EMPLOYEES E on d.num = E.dept_num
group by d.num;

#Seleccionamos la vista
select * from V_DEPARTMENTS;

#(3)
#Insertamos una serie de datos para luego comprobar si se altera o no la vista
insert into DEPARTMENTS value (60,'HUMAN RESOURCES','MAD');
insert into EMPLOYEES value (9999,'GONZALEZ','SERGI',NULL ,'2019-01-01',9000,NULL,60, NULL);

#Seleccionamos la vista
select * from V_DEPARTMENTS;
#La vista efectivamente va cambiando

#(4)
#Esta es la query que agregaremos como vista
select E.num,E.surname,E.name,E.manager,E.start_date,E.salary,E.commission,D.name as dept_name ,O.name as occu_name from EMPLOYEES as E
left outer join OCCUPATIONS O on O.code = E.occu_code
left outer join DEPARTMENTS D on D.num = E.dept_num;

#Creamos la vista
Create view V_EMPLOYEES as select E.num,E.surname,E.name,E.manager,E.start_date,E.salary,E.commission,D.name as dept_name ,O.name as occu_name from EMPLOYEES as E
left outer join OCCUPATIONS O on O.code = E.occu_code
left outer join DEPARTMENTS D on D.num = E.dept_num;

#Comprobamos que funciona
select * from V_EMPLOYEES;

#(5)
#La query que agregaremos como vista (hay que usar la vista employees)
select E.num,E.surname,E.name,E.manager,E.start_date,E.salary,E.commission,E.name as dept_name ,E.name as occu_name, V.surname as man_surname, V.name as man_name
from V_EMPLOYEES as E
left outer join V_EMPLOYEES as V on V.num=E.manager;

#Creamos la view
create view V_EMPLOYEES_FULL as select V_EMPLOYEES.num,V_EMPLOYEES.surname,V_EMPLOYEES.name,V_EMPLOYEES.manager,V_EMPLOYEES.start_date,V_EMPLOYEES.salary,V_EMPLOYEES.commission,V_EMPLOYEES.name as dept_name ,V_EMPLOYEES.name as occu_name, V.surname as man_surname, V.name as man_name
from V_EMPLOYEES
left outer join V_EMPLOYEES as V on V.num=V_EMPLOYEES.manager;

#Comprobamos que funciona
select * from V_EMPLOYEES_FULL;

#(6)
#Data is changed if you update it from a view

#(7)
#When i try to create a new register from a view it is impossible, i think it is all about how views are done.
#It prompts this error "[HY000][1471] (conn=9) The target table V_EMPLOYEES of the INSERT is not insertable-into"
