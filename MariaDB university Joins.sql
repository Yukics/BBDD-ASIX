use university;

#Inner join
select * from course
inner join prereq p on course.course_id = p.course_id;

#Left outer join
select * from course
left outer join prereq p on course.course_id = p.course_id;

#Natural right outer join
select * from course
right outer join prereq p on course.course_id = p.course_id;

#Full outer join
select * from course
right join prereq p on course.course_id = p.course_id
union
select * from course
left join prereq p on course.course_id = p.course_id;


