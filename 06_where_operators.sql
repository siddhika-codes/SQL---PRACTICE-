CREATE DATABASE movies_db;
USE movies_db;

CREATE TABLE movies (
movie_id INT PRIMARY KEY,
title VARCHAR(50),
genre VARCHAR(20),
rating INT,
release_year INT,
budget INT );

INSERT INTO movies 
(movie_id, title, genre, rating, release_year, budget )
VALUES
(1, "Iron Valley", "Action", 7.5, 2012, 120),
(2, "Lost Letters", "Romance", 8.2, 2018, 40),
(3, "Giggle Street", "Comedy", 6.8, 2016, 25),
(4, "Night Pursuit", "Action", 8.6, 2019, 150),
(5, "Home Again", "Drama", 8.0, 2014, 60),
(6, "Rode Jokes", "Comedy", 7.2, 2020, 35),
(7, "Quiet Voice", "Drama", 8.9, 2021, 80),
(8, "Fast Lane", "Action", 6.5, 2017, 95),
(9, "Sweet Morning", "Romance", 7.8, 2013, 55),
(10, "Laugh Factory", "Comedy", 8.3, 2022, 70);

SELECT * FROM movies WHERE rating > 8;

SELECT * FROM movies WHERE genre = "Action" AND release_year > 2015;

SELECT * FROM movies WHERE genre = "Comedy" OR genre = "Drama";
SELECT * FROM movies WHERE genre IN ("Comedy", "Drama");

SELECT * FROM movies WHERE budget BETWEEN 50 AND 100;
SELECT * FROM movies WHERE budget NOT BETWEEN 50 AND 100;

SELECT * FROM movies WHERE genre != "Action" 
ORDER BY rating DESC, budget DESC
LIMIT 3;









