use SQL1NORMALDATES;

select surname, name, date_format(start_date, '%W %D %M %Y %H:%i:%S') as start_date from EMPLOYEES
where 'June'=date_format(start_date,'%M');