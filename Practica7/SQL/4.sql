use SQL1NORMALSTRINGS;

select surname, if ( instr(substring(surname, instr(surname,'a')+1),'a')=0,
    0,
    instr(surname,'a')+instr(substring(surname, instr(surname,'a')+1),'a')
) as SecondA from EMPLOYEES;


