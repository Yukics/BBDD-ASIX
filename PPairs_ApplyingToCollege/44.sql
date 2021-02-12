#44. Delete colleges with no CS applicants.

#Así sabemos que colegios tienen apllicantes de CS
#select distinct college from APPLIES where major= "CS";

#Borramos los colleges que no aparecen en la subquery
delete from COLLEGES where
name not in (select distinct college from APPLIES where major= "CS");