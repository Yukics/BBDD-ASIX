use SQL1NORMALSTRINGS;
update EMPLOYEES
set name = replace(name, 'ANTONIA','TONIA'),
name = replace(name, 'ANTONIO','TONIO');
