use SQL1NORMALDATES;

select W.Year from (
select year(start_date) as Year, count(year(start_date)) as Num from EMPLOYEES
group by Year order by Num desc limit 1) as W;