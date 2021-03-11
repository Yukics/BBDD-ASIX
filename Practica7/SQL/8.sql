use SQL1NORMALSTRINGS;
select concat_ws('_',substring(surname,1,2),substring(surname,3,length(surname))) as Surname from EMPLOYEES;