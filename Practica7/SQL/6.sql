use SQL1NORMALSTRINGS;
select replace(concat_ws(' ',name,surname), 'IO','IOTE') as IOTE_Name from EMPLOYEES;