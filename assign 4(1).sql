show databases;
#create database school;
use school;
create table students(
studentname varchar(20),
subject varchar(10),
mark float(5,2)
);
insert into students values('raji', 'tamil', 85),
('renu', 'english', 78.00),
('riya', ' maths', 92),
('preethi', 'tamil', 75),
('priya', 'english', 88),
('pooja', 'maths', 81),
('ramya', 'tamil', 90),
('niki', 'english', 76),
('sivani', 'maths', 95);
 select studentname,subject,mark
 from students
 where subject in
 (
 select subject
 from students
 where subject in('tamil','english','maths')
 );
