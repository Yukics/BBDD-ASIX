use SQL1NORMALDATES;

select surname, name, start_date from EMPLOYEES
where 'Tuesday'=date_format(start_date,'%W');