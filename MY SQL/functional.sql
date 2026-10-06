-- =========================================================
-- SQL FUNCTIONS PRACTICAL
-- =========================================================

-- 1. CREATE DATABASE
CREATE DATABASE shop_db;

-- 2. USE DATABASE
USE shop_db;


-- 3. CREATE TABLE
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    category VARCHAR(30),
    mfg_date DATE
);


-- 4. INSERT RECORDS
INSERT INTO Product
(product_id, product_name, price, quantity, category, mfg_date)
VALUES
(101, 'Laptop', 55000.00, 5, 'Electronics', '2025-01-15'),
(102, 'Mouse', 750.50, 20, 'Electronics', '2025-02-10'),
(103, 'Keyboard', 1250.75, 15, 'Electronics', '2025-03-20'),
(104, 'Notebook', 85.25, 50, 'Stationery', '2025-04-05'),
(105, 'Pen', 25.50, 100, 'Stationery', '2025-05-12');


-- 5. DISPLAY COMPLETE TABLE
SELECT * FROM Product;


-- =========================================================
-- A. NUMBER FUNCTIONS
-- =========================================================

-- 1. ROUND()
-- Rounds a number to the nearest integer
SELECT product_name, price,
       ROUND(price) AS rounded_price
FROM Product;


-- 2. CEIL()
-- Returns the smallest integer greater than or equal to number
SELECT product_name, price,
       CEIL(price) AS ceiling_price
FROM Product;


-- 3. FLOOR()
-- Returns the largest integer less than or equal to number
SELECT product_name, price,
       FLOOR(price) AS floor_price
FROM Product;


-- 4. MOD()
-- Returns the remainder after division
SELECT product_name, quantity,
       MOD(quantity, 3) AS remainder
FROM Product;


-- 5. ABS()
-- Returns the positive value of a number
SELECT product_name, price,
       ABS(price - 1000) AS absolute_difference
FROM Product;


-- =========================================================
-- B. AGGREGATE FUNCTIONS
-- =========================================================

-- 1. COUNT()
-- Counts the number of records
SELECT COUNT(*) AS total_products
FROM Product;


-- 2. SUM()
-- Calculates the total of values
SELECT SUM(quantity) AS total_quantity
FROM Product;


-- 3. AVG()
-- Calculates the average of values
SELECT AVG(price) AS average_price
FROM Product;


-- 4. MAX()
-- Returns the highest value
SELECT MAX(price) AS highest_price
FROM Product;


-- 5. MIN()
-- Returns the lowest value
SELECT MIN(price) AS lowest_price
FROM Product;


-- =========================================================
-- C. CHARACTER FUNCTIONS
-- =========================================================

-- 1. UPPER()
-- Converts text into uppercase letters
SELECT product_name,
       UPPER(product_name) AS upper_name
FROM Product;


-- 2. LOWER()
-- Converts text into lowercase letters
SELECT category,
       LOWER(category) AS lower_category
FROM Product;


-- 3. LENGTH()
-- Returns the number of characters
SELECT product_name,
       LENGTH(product_name) AS name_length
FROM Product;


-- 4. SUBSTRING()
-- Extracts a specific part of a string
SELECT product_name,
       SUBSTRING(product_name, 1, 3) AS short_name
FROM Product;


-- 5. CONCAT()
-- Combines two or more strings
SELECT CONCAT(product_name, ' - ', category) AS product_details
FROM Product;


-- =========================================================
-- D. CONVERSION FUNCTIONS
-- =========================================================

-- 1. CAST(... AS CHAR)
-- Converts a value into character string
SELECT product_name, price,
       CAST(price AS CHAR) AS price_character
FROM Product;


-- 2. STR_TO_DATE()
-- Converts a string into date
SELECT product_name, mfg_date,
       STR_TO_DATE(
           DATE_FORMAT(mfg_date, '%d-%m-%Y'),
           '%d-%m-%Y'
       ) AS converted_date
FROM Product;


-- 3. CAST(... AS DECIMAL)
-- Converts a value into number format
SELECT product_name, price,
       CAST(price AS DECIMAL(10,2)) AS converted_number
FROM Product;


-- =========================================================
-- E. DATE FUNCTIONS
-- =========================================================

-- 1. CURRENT_DATE()
-- Returns the current date
SELECT CURRENT_DATE() AS current_date;


-- 2. NOW()
-- Returns the current date and time
SELECT NOW() AS current_datetime;


-- 3. MONTH()
-- Extracts the month from a date
SELECT product_name, mfg_date,
       MONTH(mfg_date) AS manufacturing_month
FROM Product;


-- 4. YEAR()
-- Extracts the year from a date
SELECT product_name, mfg_date,
       YEAR(mfg_date) AS manufacturing_year
FROM Product;


-- 5. DATE()
-- Extracts the date part from a value
SELECT DATE(NOW()) AS current_date;