#46. Turn the highest-mark CS applicant into a bioengineering applicant.

#Seleccionamos el studiantes que ha aplicado a CS con la nota mas alta
select s.id from APPLIES as a, STUDENTS as s where a.sid=s.id and a.major='CS' order by mark desc limit 1

#Solución del ejercicio
update APPLIES
set major = 'bioengineering'
where major = 'CS'
  and sid in (select s.id from APPLIES as a, STUDENTS as s
  where a.sid=s.id and a.major='CS' order by mark desc limit 1);

#La solución de maximo
#select * from APPLIES
#where major = 'CS'
#  and sid in
#    (select id from STUDENTS
#     where mark >= all
#        (select mark from STUDENTS
#         where id in (select sid from APPLIES where major = 'CS')));