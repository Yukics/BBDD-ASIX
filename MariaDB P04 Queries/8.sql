use P04_queries01;

select D.name, count(*) as num_employees from EMPLOYEES E
right outer join DEPARTMENTS D on E.dept_num = D.num
group by dept_num
union
select dept_num, count(*) from EMPLOYEES
where dept_num is null
group by dept_num;
