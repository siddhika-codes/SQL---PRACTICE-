CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

CREATE TABLE IF NOT EXISTS authors (
author_id INT PRIMARY KEY, 
author_name VARCHAR(20),
country VARCHAR(30) );

INSERT INTO authors (
author_id, author_name, country )
VALUES
(111, "Dale Carneige", "Mexico"),
(222, "Muchkin", "Uk"),
(1111, "Dumblus", "Paris");

SELECT * FROM authors;

CREATE TABLE  IF NOT EXISTS books (
book_id INT PRIMARY KEY,
title VARCHAR(20),
price INT,
author_id INT,
FOREIGN KEY (author_id) REFERENCES authors (author_id)
);

INSERT INTO books (
book_id, title, price, author_id ) 
VALUES 
(23, "How To Love", 499, 1111),
(17, "How To Talk", 299, 222),
(20, "How To Make Money", 399, 1111),
(18, "How To Leave", 199, 1111),
(25, "Karma", 599, 222);

-- Test: ye error dega (1452)
 -- INSERT INTO books VALUES (14, "I Love You", 279, 333);

DELETE FROM books 
WHERE author_id = 222;

SELECT * FROM books;

DELETE FROM authors
WHERE author_id = 111;

-- Test: ye error dega (1451)
 -- DELETE FROM authors
 -- WHERE author_id = 1111;




