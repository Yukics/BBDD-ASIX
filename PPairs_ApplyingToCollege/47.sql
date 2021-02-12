#47. Give everyone the highest mark and smallest high school. (Clue: update).

#Solución unica y facil
update STUDENTS
set mark = (select max(mark) from STUDENTS),
    size_high_school = (select min( size_high_school) from STUDENTS);
