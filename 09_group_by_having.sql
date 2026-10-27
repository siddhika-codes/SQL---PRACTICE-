CREATE DATABASE hr_db;
USE hr_db;

CREATE TABLE staff (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(30),
department VARCHAR(20),
city VARCHAR(20),
salary DECIMAL(10,2),
experience_years INT );

INSERT INTO staff (
emp_id, emp_name, department, city, salary, experience_years )
VALUES
(1, "Aman", "Sales", "Delhi", 30000, 2),
(2, "Bhavna", "Sales", "Mumbai", 45000, 5),
(3, "Charu", "IT", "Bhopal", 60000, 4),
(4, "Deepak", "IT", "Indore", 75000, 7),
(5, "Esha", "HR", "Delhi", 35000, 3),
(6, "Farhan", "IT", "Delhi", 50000, 2),
(7, "Gita", "HR", "Bhopal", 40000, 6),
(8, "Harsh", "Sales", "Indore", 38000, 3),
(9, "Isha", "Finance", "Mumbai", 55000, 5),
(10, "Jay", "Finance", "Delhi", 65000, 8);

SELECT department, count(emp_name)
FROM staff
GROUP BY department;

SELECT department, AVG(salary)
FROM staff
GROUP BY department;

SELECT city, SUM(salary)
FROM staff
GROUP BY city;

SELECT department, COUNT(emp_id)
FROM staff
GROUP BY department
HAVING COUNT(emp_id) > 2;

SELECT department FROM staff WHERE experience_years >= 3 
GROUP BY department
HAVING AVG(salary) > 45000
ORDER BY AVG(salary) DESC;













