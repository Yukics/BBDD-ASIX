#41. Insert into APPLIES with college 'UIB', major 'IB', AND DECISION NULL all students who didn't
# apply anywhere. (Clue: insert with subselect).

#Seleccionamos los id de applies y mostramos los estudiantes que no están en applies y students

#select *
#from STUDENTS
#where id not in (select sid from APPLIES);

#En decision he puesto not null así que tiene que ser true o false
#Se insertan en applies los estudiantes cuya decisión era null en un principio

#insert into APPLIES
#  select id, 'UIB', 'IB', null
#  from STUDENTS
#  where id not in (select sid from APPLIES);


insert into APPLIES
  select id, 'UIB', 'IB', false
  from STUDENTS
  where id not in (select sid from APPLIES);

