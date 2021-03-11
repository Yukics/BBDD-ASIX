use SQL1NORMALSTRINGS;
select concat_ws(' ',concat(left(name,1),lower(substring(name,2,length(name)))),concat(left(surname,1),lower(substring(surname,2,length(surname))))) as FullName
from EMPLOYEES;