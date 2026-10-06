CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT NULL
);

INSERT INTO employee (emp_id, name, salary)
VALUES
(101, 'James', 40000),
(102, 'Wilson', 55000),
(103, 'Brown', 70000),
(104, 'Ali', NULL);


SELECT * FROM employee;