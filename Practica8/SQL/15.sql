use SQL1NORMALDATES;

select year(start_date) as Year, month(start_date) as Month, day(start_date) as Day from EMPLOYEES;