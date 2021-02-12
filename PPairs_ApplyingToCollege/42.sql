#42. Admit to UIB EE all students who were refused (decision=false) in EE
# elsewhere. (Clue: insert with subselect).

#Así seleccionamos a quienes aplicaron a EE y la decisión fue falsa
#select * from APPLIES where decision=false and major="EE";


#Insertamos en applies los estudiantes que trataron de entrar en EE y
#la decisión fue falsa, como nuevos estudiantes de UIB de EE aceptados
insert into APPLIES
  select id, 'UIB', 'EE', true
  from STUDENTS
  where id in (select sid from APPLIES
                where major = 'EE' and decision = false);
