CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students (
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
city VARCHAR(30)
);

SELECT * FROM students;

SHOW DATABASES;
SHOW TABLES;

CREATE TABLE teachers (
teacher_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
subject VARCHAR(20),
salary DECIMAL(10,2)
);

SELECT * FROM teachers;

DESC teachers;

CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(50) UNIQUE,
duration_month INT DEFAULT 3
);

SELECT * FROM courses;

DROP TABLE students;

SHOW TABLES;








 

 
 

 
 
 
 
































