use SQL1NORMALDATES;

select * from EMPLOYEES
where start_date in (select min(start_date) from EMPLOYEES);