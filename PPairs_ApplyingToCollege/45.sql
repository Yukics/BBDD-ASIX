#45. Accept applicants (set decision=true) to Stanford with mark < 3.6 but turn them into majors 'EE'.

#Con esto sabemos los estudiantes que han aplicado a stanford con una media inferior a 3.6
#select s.id from STUDENTS as s, APPLIES as a where a.sid=s.id and s.mark<3.6 and a.college="Stanford"


#Mi query
update APPLIES
set decision=true and major='EE'
where sid in (select s.id from STUDENTS as s, APPLIES as a where a.sid=s.id and s.mark<3.6 and a.college='Stanford')

#La query del ejercicio resuelto
#update APPLIES
#set decision = true, major = 'EE'
#where college = 'Stanford'
#  and sid in (select id from STUDENTS where mark < 3.6);




