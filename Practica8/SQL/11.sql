use SQL1NORMALDATES;

select datediff(max(start_date),min(start_date)) as MyDay from EMPLOYEES;

