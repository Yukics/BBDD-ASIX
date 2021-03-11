use SQL1NORMALSTRINGS;
select concat_ws(' ',trim(name),trim(surname)) as FullName from EMPLOYEES;