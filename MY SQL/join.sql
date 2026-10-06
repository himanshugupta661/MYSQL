-- =========================================
-- 1. CREATE DATABASE
-- =========================================

CREATE DATABASE join_practical;

USE join_practical;


-- =========================================
-- 2. CREATE SALESMAN TABLE
-- =========================================

CREATE TABLE salesman (
    salesman_id INT PRIMARY KEY,
    salesman_name VARCHAR(30),
    city VARCHAR(30),
    commission DECIMAL(5,2)
);


-- =========================================
-- 3. CREATE CUSTOMER TABLE
-- =========================================

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(30),
    city VARCHAR(30),
    salesman_id INT
);


-- =========================================
-- 4. CREATE ORDERS TABLE
-- =========================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    customer_id INT
);


-- =========================================
-- 5. INSERT SALESMAN RECORDS
-- =========================================

INSERT INTO salesman
(salesman_id, salesman_name, city, commission)
VALUES
(101, 'Amit', 'Delhi', 5.00),
(102, 'Rahul', 'Mumbai', 6.00),
(103, 'Neha', 'Bhopal', 7.00),
(104, 'Priya', 'Raipur', 5.50);


-- =========================================
-- 6. INSERT CUSTOMER RECORDS
-- =========================================

INSERT INTO customer
(customer_id, customer_name, city, salesman_id)
VALUES
(201, 'Ravi', 'Delhi', 101),
(202, 'Sita', 'Mumbai', 102),
(203, 'Mohan', 'Bhopal', 103),
(204, 'Kiran', 'Indore', 105);


-- =========================================
-- 7. INSERT ORDERS RECORDS
-- =========================================

INSERT INTO orders
(order_id, order_date, amount, customer_id)
VALUES
(301, '2026-09-01', 5000.00, 201),
(302, '2026-09-03', 3500.00, 202),
(303, '2026-09-05', 4200.00, 203),
(304, '2026-09-07', 2800.00, 205);


-- =========================================
-- 8. DISPLAY SALESMAN TABLE
-- =========================================

SELECT * FROM salesman;


-- =========================================
-- 9. DISPLAY CUSTOMER TABLE
-- =========================================

SELECT * FROM customer;


-- =========================================
-- 10. DISPLAY ORDERS TABLE
-- =========================================

SELECT * FROM orders;


-- =========================================
-- 11. INNER JOIN
-- =========================================
-- Question:
-- Display salesman name, customer name,
-- order id and order amount using INNER JOIN.

SELECT
    s.salesman_name,
    c.customer_name,
    o.order_id,
    o.amount
FROM salesman s
INNER JOIN customer c
ON s.salesman_id = c.salesman_id
INNER JOIN orders o
ON c.customer_id = o.customer_id;


-- =========================================
-- 12. EQUI JOIN
-- =========================================
-- Question:
-- Display salesman and customer details
-- where salesman_id is equal.

SELECT
    s.salesman_name,
    c.customer_name,
    s.city AS salesman_city,
    c.city AS customer_city
FROM salesman s
JOIN customer c
ON s.salesman_id = c.salesman_id;


-- =========================================
-- 13. THETA JOIN
-- =========================================
-- Question:
-- Display salesman and customer details
-- where salesman_id of salesman is greater
-- than salesman_id of customer.

SELECT
    s.salesman_name,
    c.customer_name,
    s.salesman_id,
    c.salesman_id
FROM salesman s
JOIN customer c
ON s.salesman_id > c.salesman_id;


-- =========================================
-- 14. LEFT OUTER JOIN
-- =========================================
-- Question:
-- Display all customers and their orders,
-- including customers having no order.

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date,
    o.amount
FROM customer c
LEFT OUTER JOIN orders o
ON c.customer_id = o.customer_id;


-- =========================================
-- 15. RIGHT OUTER JOIN
-- =========================================
-- Question:
-- Display all orders and their customer details,
-- including orders having no matching customer.

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date,
    o.amount
FROM customer c
RIGHT OUTER JOIN orders o
ON c.customer_id = o.customer_id;


-- =========================================
-- 16. FULL OUTER JOIN
-- =========================================
-- Question:
-- Display all customers and all orders,
-- including unmatched records.

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date,
    o.amount
FROM customer c
LEFT JOIN orders o
ON c.customer_id = o.customer_id

UNION

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date,
    o.amount
FROM customer c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;


-- =========================================
-- 17. NATURAL JOIN
-- =========================================
-- Question:
-- Display customer and order details
-- using NATURAL JOIN.

SELECT *
FROM customer
NATURAL JOIN orders;