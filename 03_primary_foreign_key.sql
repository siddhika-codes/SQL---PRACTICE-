CREATE DATABASE company_db;
USE company_db;

CREATE TABLE departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(20) );

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(20),
salary INT,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id) 
);

INSERT INTO departments 
(dept_id, dept_name )
VALUES
(101, "marketing"),
(102, "finance"),
(103, "strategy"),
(104, "marketing");

UPDATE departments 
SET dept_name = "sales"
WHERE dept_id = 104;

SELECT * FROM departments;

INSERT INTO employees
(emp_id, emp_name, salary, dept_id)
VALUES
(111,"ashish", 45000,104),
(112,"bipesh", 43000,103),
(113,"chandan", 53000,101),
(114,"damru", 39000,104),
(115,"esha", 57000,102),
(116,"falguni", 59000,102),
(117,"harish", 23000,101);

SELECT * FROM employees;






