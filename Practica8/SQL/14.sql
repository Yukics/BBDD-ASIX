use SQL1NORMALDATES;

#1
select name,surname, datediff(curdate(), start_date)/365 as Years from EMPLOYEES
order by Years desc;

#2
select name,surname, date_format(from_days(datediff(curdate(), start_date)), '%y years  %m months %d days') as Years from EMPLOYEES
order by Years desc ;
