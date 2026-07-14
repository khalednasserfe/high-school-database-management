use excellence_high_school;
drop table if exists best_students;
drop table if exists failed_students;

-- BELOW CODE CREATES A TABLE OF STUDENTS WITH GPA > 90.
create table best_students
select * from students where gpa > 90;
select * from best_students;



-- BELOW CODE CREATES A TABLE OF STUDENTS WITH GPA < 60.
create table failed_students
select * from students where gpa < 60;
select * from failed_students;



-- BELOW CODE SHOWS ALL STUDENTS WHOSE NAME STARTS WITH AN "A".
select * from students where student_name like "a%" ;



-- BELOW CODE SHOWS STUDENTS WHOSE NAME CONSISTS OF 4 CHARACTERS.
select * from students where student_name like "____";



-- BELOW CODE FINDS SCHOOL AVERAGE GPA, MINIMAM AND MAXIMUM.
select round(avg(gpa), 2) as "school student average points(GPA)",
 min(gpa) as "minimum GPA (lowest)",
 max(gpa) as "maximum GPA (highest)"
from students;



-- BELOW CODE SHOWS GRADUATING STUDENTS WITH FULL MARK.
select * from students where gpa = 100 and acadamic_level = 6;



-- BELOW CODE SHOW LEVEL 1 STUDENTS WHOSE AGE IS LESS THAN 17 YEAR OLD.
select * from students where acadamic_level = 1 and dob >= 2010-01-01;



-- BELOW CODE COUNTS STUDENTS AT LEVEL 2.
select count(id) from students where acadamic_level = 2;



-- BELOW CODE SHOWS ALL TRACKS IN THE STUDENT TABLE.
select distinct(track) from students;


-- BELOW CODE SHOWS ALL COURSES IN UPPERCASE.
select upper(course_name) from courses;


-- BELOW CODE FLOORS SCHOOL AVERAGE GPA.
select floor(avg(gpa)) from students;



-- BELOW CODE REPLACES SEX VALUE FROM "M" TO "MALE" AND "F" TO "FEMALE".
alter table students
modify column sex varchar(50);
set sql_safe_updates = 0;
update students
set sex = "Male"
where sex = "m";
update students
set sex = "Female"
where sex = "f";
set sql_safe_updates = 1;
select * from students;



-- BELOW CODE ADD 5 MARKS TO ALL STUDENTS WITH GPA < 60.
set sql_safe_updates = 0;
update students
set gpa = gpa + 5
where gpa < 60;
set sql_safe_updates = 1;
select * from students;

