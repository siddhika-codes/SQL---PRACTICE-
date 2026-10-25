CREATE DATABASE store_db;
USE store_db;

CREATE TABLE sales(
sale_id INT PRIMARY KEY, 
product VARCHAR(30),
category VARCHAR(20),
quantity INT,
price DECIMAL (10,2),
discount DECIMAL (8,2) );

INSERT INTO sales
(sale_id, product, category, quantity, price, discount)
VALUES
(1, "Notebook", "Stationery", 10, 50.00, 5.00),
(2,"Pen", "Stationery", 25, 10.00, NULL),
(3,"Mobile", "Electronics", 2, 15000.00, 500.00),
(4,"Headphones", "Electronics", 4, 2000.00, NULL),
(5,"Rice", "Grocery", 6, 60.00, NULL),
(6,"Sugar","Grocery", 8, 45.00, 2.00),
(7,"Laptop", "Electronics", 1, 55000.00, 1000.00),
(8,"Biscuits", "Grocery", 12, 20.00, NULL);

UPDATE sales SET price = 20.00 WHERE sale_id = 8;

SELECT COUNT(sale_id)
FROM sales;

SELECT SUM(quantity) AS total_quantity
FROM sales;

SELECT AVG(price)
FROM sales;

SELECT MIN(price),MAX(price)
FROM sales;

SELECT COUNT(discount)
FROM sales;




