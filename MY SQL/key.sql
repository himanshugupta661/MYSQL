-- =========================================
-- EXERCISE 6
-- PRIMARY KEY, FOREIGN KEY, UNIQUE,
-- CHECK and NOT NULL
-- =========================================


-- 1. CREATE DATABASE
CREATE DATABASE College;


-- 2. USE DATABASE
USE College;


-- 3. CREATE STUDENT TABLE
CREATE TABLE Student (
    Student_ID INT,
    Student_Name VARCHAR(50),
    Email VARCHAR(100),
    Age INT,
    Course_ID INT
);


-- 4. INSERT RECORDS INTO STUDENT
INSERT INTO Student VALUES
(101, 'Aman', 'aman@gmail.com', 20, 201),
(102, 'Riya', 'riya@gmail.com', 21, 202),
(103, 'Karan', 'karan@gmail.com', 19, 201),
(104, 'Priya', 'priya@gmail.com', 22, 203);


-- DISPLAY STUDENT TABLE
SELECT * FROM Student;


-- 5. PRIMARY KEY
ALTER TABLE Student
ADD PRIMARY KEY (Student_ID);


-- DISPLAY STUDENT TABLE
SELECT * FROM Student;


-- 6. CREATE COURSE TABLE
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50)
);


-- INSERT RECORDS INTO COURSE
INSERT INTO Course VALUES
(201, 'CSE'),
(202, 'AI'),
(203, 'IT');


-- DISPLAY COURSE TABLE
SELECT * FROM Course;


-- 7. FOREIGN KEY
ALTER TABLE Student
ADD FOREIGN KEY (Course_ID)
REFERENCES Course(Course_ID);


-- DISPLAY STUDENT TABLE
SELECT * FROM Student;


-- DISPLAY COURSE TABLE
SELECT * FROM Course;


-- 8. UNIQUE CONSTRAINT
ALTER TABLE Student
ADD UNIQUE (Email);


-- DISPLAY STUDENT TABLE
SELECT * FROM Student;


-- TEST UNIQUE CONSTRAINT
-- This query will give a duplicate email error.
-- INSERT INTO Student VALUES
-- (105, 'Arjun', 'aman@gmail.com', 20, 201);


-- 9. CHECK CONSTRAINT
ALTER TABLE Student
ADD CONSTRAINT chk_age CHECK (Age >= 18);


-- DISPLAY STUDENT TABLE
SELECT * FROM Student;


-- TEST CHECK CONSTRAINT
-- This query will give a CHECK constraint error.
-- INSERT INTO Student VALUES
-- (105, 'Neha', 'neha@gmail.com', 16, 201);


-- 10. NOT NULL CONSTRAINT
ALTER TABLE Student
MODIFY Student_Name VARCHAR(50) NOT NULL;


-- DISPLAY STUDENT TABLE
SELECT * FROM Student;


-- TEST NOT NULL CONSTRAINT
-- This query will give a NOT NULL error.
-- INSERT INTO Student VALUES
-- (105, NULL, 'rohit@gmail.com', 20, 201);


-- FINAL STUDENT TABLE
SELECT * FROM Student;


-- FINAL COURSE TABLE
SELECT * FROM Course;