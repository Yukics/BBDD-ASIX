use SQL1NORMALDATES;

select year(start_date) as Year, count(year(start_date)) as Num from EMPLOYEES
group by Year;