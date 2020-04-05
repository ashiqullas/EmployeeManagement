# EmployeeManagement
This is my Training Project
build on Eclipse IDE for Enterprise Java Developers. Version: 2019-09 R (4.13.0) Build id: 20190917-1200 with jdk 1.8 <br>
Maven Project based on maven-archtype-webapp 1.0 <br>
mySQL 5.7. <br>
Used Database sql query:<br>
create database group10;
use group10;
create table employee_management(employee_id varchar(20) primary key not null,firstName varchar(50),lastName varchar(50),mail_id varchar(50),contact_number varchar(20),gender varchar(10),age int,job_location varchar(20),Business_Unit varchar(20),project_id int,Job_title varchar(20),DateOfJoining date,Salary numeric(7,2));
insert into employee_management values('ABC001','KUMAR','RAJ','kumar@gmail.com','9293929292','male',20,'Kochi','Sales',100,'Trainee','2012-12-12',23000.0);
insert into employee_management values('ABC002','DEVAN','MOHAN','devan@gmail.com','8596040456','male',25,'chennai','Sales',101,'Trainee','2013-02-12',21000.0);

for login default username: admin and password: admin123

