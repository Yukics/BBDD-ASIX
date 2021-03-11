use SQL1NORMALDATES;

select surname, name, start_date from EMPLOYEES
where 'June'=date_format(start_date,'%M');