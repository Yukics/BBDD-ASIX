use P04_queries01;

select D.name, count(dept_num)from EMPLOYEES
inner join DEPARTMENTS D on EMPLOYEES.dept_num = D.num
group by dept_num
union
select dept_num, count(*) from EMPLOYEES
where dept_num is null
group by dept_num;
