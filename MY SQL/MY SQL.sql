create database university;
use university;

create table Department (dept_name varchar(20),
building varchar (15),
budget numeric(12,2),
primary key(dept_name));

create table course(
	course_id varchar(7),
    title varchar(50),
    dept_name varchar(20),
    credits numeric(2,0),
    PRIMARY KEY(course_id),
    foreign key (dept_name) references department(dept_name));
    
    
    
    create table instructor(
    id varchar(5),
    name varchar(20) not null,
    dept_name varchar(20),
    salary numeric(8,2),
    primary key (id),
    foreign key (dept_name) references department(dept_name));
    
    INSERT INTO department (dept_name, building, budget) VALUES 
('Biology', 'Watson', 90000),
('Comp. Sci.', 'Taylor', 100000),
('Elec. Eng.', 'Taylor', 85000),
('Finance', 'Painter', 120000),
('History', 'Painter', 50000),
('Music', 'Packard', 80000),
('Physics', 'Watson', 70000);

INSERT INTO course (course_id, title, dept_name, credits) VALUES 
('BIO-101', 'Intro. to Biology', 'Biology', 4),
('BIO-301', 'Genetics', 'Biology', 4),
('BIO-399', 'Computational Biology', 'Biology', 3),
('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4),
('CS-190', 'Game Design', 'Comp. Sci.', 4),
('CS-315', 'Robotics', 'Comp. Sci.', 3),
('CS-319', 'Image Processing', 'Comp. Sci.', 3),
('CS-347', 'Database System Concepts', 'Comp. Sci.', 3),
('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', 4),
('FIN-201', 'Investment Banking', 'Finance', 3),
('HIS-351', 'World History', 'History', 3),
('MU-199', 'Music Video Production', 'Music', 3),
('PHY-101', 'Physical Principles', 'Physics', 4);

INSERT INTO instructor VALUES ('10101', 'Srinivasan', 'Comp. Sci.', 65000);
INSERT INTO instructor VALUES ('12121', 'Wu', 'Finance', 90000);
INSERT INTO instructor VALUES ('15151', 'Mozart', 'Music', 40000);
INSERT INTO instructor VALUES ('22222', 'Einstein', 'Physics', 95000);
INSERT INTO instructor VALUES ('32343', 'El Said', 'History', 60000);
INSERT INTO instructor VALUES ('33456', 'Gold', 'Physics', 87000);
INSERT INTO instructor VALUES ('45565', 'Katz', 'Comp. Sci.', 75000);
INSERT INTO instructor VALUES ('58583', 'Califieri', 'History', 62000);
INSERT INTO instructor VALUES ('76543', 'Singh', 'Finance', 80000);
INSERT INTO instructor VALUES ('76766', 'Crick', 'Biology', 72000);
INSERT INTO instructor VALUES ('83821', 'Brandt', 'Comp. Sci.', 92000);
INSERT INTO instructor VALUES ('98345', 'Kim', 'Elec. Eng.', 80000);


show tables;
select*from department;
select*from course;
select*from instructor;
