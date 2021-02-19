use P04_queries01;

select concat(e.name, ' ', e.surname) as FullName from EMPLOYEES as e
where occu_code is null and dept_num is null
order by FullName;