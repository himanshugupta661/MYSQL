CREATE DATABASE employee_db;

USE employee_db;


CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT NULL
);


CREATE TABLE employee2 (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT NULL
);


INSERT INTO employee (emp_id, name, salary)
VALUES
(101, 'James', 40000),
(102, 'Wilson', 55000),
(103, 'Brown', 70000),
(104, 'Allen', NULL);


INSERT INTO employee2 (emp_id, name, salary)
VALUES
(103, 'Brown', 70000),
(104, 'Allen', NULL),
(105, 'David', 60000),
(106, 'Smith', 45000);


SELECT * FROM employee;

SELECT * FROM employee2;


SELECT emp_id, name, salary, salary + 5000 AS increased_salary
FROM employee;


SELECT emp_id, name, salary, salary - 5000 AS decreased_salary
FROM employee;


SELECT emp_id, name, salary, salary * 2 AS double_salary
FROM employee;


SELECT emp_id, name, salary, salary / 2 AS half_salary
FROM employee;


SELECT emp_id, name, salary, salary % 10000 AS remainder
FROM employee;


SELECT * FROM employee
WHERE salary = 55000;


SELECT * FROM employee
WHERE salary <> 55000;


SELECT * FROM employee
WHERE salary > 50000;


SELECT * FROM employee
WHERE salary < 50000;


SELECT * FROM employee
WHERE salary >= 50000;


SELECT * FROM employee
WHERE salary <= 55000;


SELECT * FROM employee
WHERE salary > 40000 AND salary < 70000;


SELECT * FROM employee
WHERE salary = 40000 OR salary = 55000;


SELECT * FROM employee
WHERE NOT salary = 55000;


SELECT * FROM employee
WHERE salary BETWEEN 40000 AND 60000;


SELECT * FROM employee
WHERE salary IN (40000, 55000, 70000);


SELECT * FROM employee
WHERE salary NOT IN (40000, 55000);


SELECT * FROM employee
WHERE name LIKE 'J%';


SELECT * FROM employee
WHERE name NOT LIKE 'J%';


SELECT * FROM employee
WHERE salary IS NULL;


SELECT * FROM employee
WHERE salary IS NOT NULL;


SELECT emp_id, name, salary
FROM employee
UNION
SELECT emp_id, name, salary
FROM employee2;


SELECT emp_id, name, salary
FROM employee
UNION ALL
SELECT emp_id, name, salary
FROM employee2;


SELECT emp_id, name, salary
FROM employee
WHERE emp_id IN (
    SELECT emp_id
    FROM employee2
);


SELECT emp_id, name, salary
FROM employee
WHERE emp_id NOT IN (
    SELECT emp_id
    FROM employee2
);