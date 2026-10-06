CREATE database Electronicshop;

use electronicshop;


CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(20),
    category VARCHAR(20),
    unit_price FLOAT );
    
    
    CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    qty_sold INT,
    sales_date DATE,
    total_price FLOAT,
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);



INSERT INTO Product
(product_id, product_name, category, unit_price)
VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphone', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);



    
    INSERT INTO Sales
(sale_id, product_id, qty_sold, sales_date, total_price)
VALUES
(1, 101, 5, '2026-01-02', 2500.00),
(2, 102, 3, '2026-01-02', 900.00),
(3, 103, 2, '2026-01-02', 60.00),
(4, 104, 4, '2026-01-03', 80.00),
(5, 105, 6, '2026-01-03', 90.00);


SELECT *FROM sales;
SELECT *FROM product;
SELECT product_name,unit_price FROM product;

SELECT sale_id,qty_sold FROM sales;

SELECT sale_id,total_price FROM sales;

SELECT *
FROM sales s
JOIN product p ON s.product_id=p.product_id;

SELECT sale_id, total_price 
FROM Sales 
WHERE sales_date = '2026-01-03';

SELECT s.sale_id, p.product_name 
FROM Sales s 
JOIN Product p ON s.product_id = p.product_id;


SELECT AVG(unit_price) AS average_unit_price FROM Product;

SELECT SUM(qty_sold) AS total_quantity_sold
FROM Sales;

SELECT *
FROM Sales
HAVING total_price = (SELECT MIN(total_price) FROM Sales);

SELECT *
FROM Product
HAVING unit_price = (SELECT MAX(unit_price) FROM Product);





