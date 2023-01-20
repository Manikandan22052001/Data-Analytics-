create database Pyhthon_with_MySql;

use Pyhthon_with_MySql;

create table student(
Stu_ID integer auto_increment primary key,
Stu_Name varchar(25),
Stu_Department varchar(25),
Stu_Age integer,
Stu_City varchar(30)
);

insert into student(Stu_Name,Stu_Department,Stu_Age,Stu_City) 
values('Manikandan','Msccs','21','olagadam'),
('Ram','Bca','20','Bhavani'),
('Manikandan','Mca','22','Erode'),
('Manikandan','BscIT','22','Salem'),
('Manikandan','Msccs','21','Chennai');

select * from student;

update student set stu_Name = "Boopathi"
where stu_ID = 5;