create database High_Schools;
use High_Schools;

create table HIGH_SCHOOLS(
	id VARCHAR(4) not null primary key,
name VARCHAR(40) not null,
	state VARCHAR(2),
	enrollment int) Engine = InnoDB;

create table STUDENTS(
	id int primary key,
	name VARCHAR(20),
	surname VARCHAR(20),
	mark real,
	high_school VARCHAR(4),
	foreign key (high_school) references HIGH_SCHOOLS (id)
) Engine = InnoDB;

INSERT INTO HIGH_SCHOOLS VALUES
('STUY','Stuyvesant High School','NY',200),
('ELEA','Eleanor Roosevelt High School','NY',400),
('MILL','Millennium High School','NY',500),
('TOWN','Townsend Harris High School','NY',800),
('MANH','Manhattan Bridges High School','NY',1000),
('QUEE','Queens High School for the Sciences','NY',1500),
('STAT','Staten Island Technical High School','NY',2000);

#Con esto copiamos la tabla de students de College a highschool reemplazando una serie de valores
insert into High_Schools.STUDENTS
select id, name, surname, mark,
case
when size_high_school = 200 then 'STUY'
when size_high_school = 400 then 'ELEA'
when size_high_school = 500 then 'MILL'
when size_high_school = 800 then 'TOWN'
when size_high_school = 1000 then 'MANH'
when size_high_school = 1500 then 'QUEE'
when size_high_school = 2000 then 'STAT'
else NULL
end as high_school
from ApplyingToCollege.STUDENTS;

