use SQL1NORMALDATES;

select max(Q.Num) as max_num from (
select year(start_date) as Year, count(year(start_date)) as Num from EMPLOYEES
group by Year) as Q;