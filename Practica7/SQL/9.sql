use SQL1NORMALSTRINGS;
select left(surname,1) as FirstChar, ascii(left(surname,1)) as SurnameAscii from EMPLOYEES;