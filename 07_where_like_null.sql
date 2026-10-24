CREATE DATABASE restaurant_db;
USE restaurant_db;

CREATE TABLE dishes (
dish_id INT PRIMARY KEY,
dish_name VARCHAR(30),
cuisine VARCHAR(20),
price DECIMAL(6,2),
rating DECIMAL (2,1),
calories INT);

INSERT INTO dishes 
(dish_id, dish_name, cuisine, price, rating, calories )
VALUES
(1, "Paneer Tikka", "North Indian", 220.00, 4.5, 350),
(2, "Masala Dosa", "South Indian", 120.50, 4.3, 280),
(3, "Veg Burger", "Fast Food", 99.00, 3.8, 420),
(4, "Pasta Alfredo", "Italian", 280.00, 4.1, 520),
(5, "Idli Sambhar", "South Indian", 80.00, 4.6, 190),
(6, "Butter Naan", "North Indian", 45.50, NULL, 260),
(7, "Margherita Pizza","Italian", 310.00, 4.4, NULL),
(8, "French Fries", "Fast Food", 75.00, 3.5, 380),
(9, "Chhole Bhature", "North Indian", 150.00, 4.0, NULL),
(10, "Uttapam", "South Indian", 110.00, NULL, 240);

SELECT * FROM dishes;

SELECT * FROM dishes WHERE rating >= 4.0;

SELECT * FROM dishes WHERE dish_name LIKE "P%";

SELECT * FROM dishes WHERE dish_name LIKE "%r";

SELECT * FROM dishes WHERE rating IS NULL;

SELECT * FROM dishes WHERE calories IS NOT NULL;

SELECT * FROM dishes WHERE cuisine = "South Indian" AND price <= 150 AND rating IS NOT NULL;








