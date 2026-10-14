CREATE DATABASE shop_db;
USE shop_db;

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(20),
category VARCHAR(30),
price INT,
stock INT );

INSERT INTO products 
(product_id, product_name, category, price, stock)
VALUES 
(101, "Sugar", "Grocery", 59, 3),
(102, "Mobile", "Electronics", 25000, 17),
(103, "Notebook", "Stationery", 50, 23),
(104, "Headphone", "Electronics", 23000, 14),
(105, "Coffee", "Grocery", 119, 20),
(106, "Pen", "Stationery", 10, 7);

INSERT INTO products (product_id, product_name, price) VALUES (107, "Pencil", 5);

SELECT * FROM products;

SELECT product_name, price FROM products;

SELECT DISTINCT category FROM products;

SELECT * FROM products
LIMIT 4;