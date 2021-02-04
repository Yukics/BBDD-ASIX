#Delete all students who applied to more than two different majors.

#First i will be sure about the Students im gonna delete
#select *
#from STUDENTS as s,
#     (select * from
#                    (select count(e.major) as cuenta, e.sid from (select distinct sid, major from APPLIES) as e group by e.sid)
#     as i where i.cuenta>2) as eliminar
#where eliminar.sid=s.id;

#Before deleting the parent rows we must delete the referenced ones
delete from APPLIES as a
where a.sid in (select i.sid from
                                  (select count(e.sid) as cuenta, e.sid from
                                                                             (select distinct sid, major from APPLIES) as e group by e.sid)
                                  as i where i.cuenta>2);

#Now we can delete the row on the parent table
delete from STUDENTS as s
where s.id in (select i.sid from
                                 (select count(e.sid) as cuenta, e.sid from
                                                                            (select distinct sid, major from APPLIES) as e group by e.sid)
                                 as i where i.cuenta>2);



