CREATE DATABASE SalesDB;
USE SalesDB;

CREATE TABLE sales_data (
    order_id INT PRIMARY KEY,
    order_date DATE,
    region VARCHAR(20),
    product VARCHAR(50),
    category VARCHAR(30),
    quantity INT,
    unit_price INT,
    total_sales INT
);

INSERT INTO sales_data VALUES
(1001,'2024-01-05','West','Laptop','Electronics',2,55000,110000),
(1002,'2024-01-10','East','Mobile','Electronics',5,18000,90000),
(1003,'2024-02-02','North','Chair','Furniture',10,2500,25000),
(1004,'2024-02-15','South','Table','Furniture',4,8000,32000),
(1005,'2024-03-01','West','Mobile','Electronics',3,20000,60000),
(1006,'2024-03-18','East','Laptop','Electronics',1,60000,60000),
(1007,'2024-04-05','North','Printer','Electronics',2,15000,30000),
(1008,'2024-04-20','South','Chair','Furniture',6,2700,16200),
(1009,'2024-05-10','West','Tablet','Electronics',4,22000,88000),
(1010,'2024-05-25','East','Table','Furniture',2,8500,17000),
(1011,'2024-06-03','North','Mobile','Electronics',7,19000,133000),
(1012,'2024-06-18','South','Laptop','Electronics',1,58000,58000);

SELECT SUM(total_sales) AS total_sales
FROM sales_data;

SELECT region, SUM(total_sales) AS region_sales
FROM sales_data
GROUP BY region;

SELECT product, SUM(total_sales) AS product_sales
FROM sales_data
GROUP BY product
ORDER BY product_sales DESC;

SELECT category, SUM(total_sales) AS category_sales
FROM sales_data
GROUP BY category;

SELECT 
    MONTH(order_date) AS month,
    SUM(total_sales) AS monthly_sales
FROM sales_data
GROUP BY MONTH(order_date)
ORDER BY month;

SELECT product, SUM(total_sales) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC
LIMIT 1;

SELECT AVG(total_sales) AS avg_order_value
FROM sales_data;
