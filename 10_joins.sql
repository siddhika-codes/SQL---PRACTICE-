CREATE DATABASE billing_db;
USE billing_db;

CREATE TABLE clients(
client_id INT PRIMARY KEY,
client_name VARCHAR(30),
city VARCHAR(20)
);

INSERT INTO clients(
client_id, client_name, city)
VALUES
(1, "Sharma Traders", "Delhi"),
(2, "Patel Foods", "Mumbai"),
(3, "Rao Textiles", "Bhopal"),
(4, "Singh Motors", "Indore"),
(5, "Khan Exports", "Delhi");

CREATE TABLE invoices(
invoice_id INT PRIMARY KEY,
client_id INT,
amount DECIMAL(10,2) ,
status VARCHAR(10) );

INSERT INTO invoices(
invoice_id,client_id,amount,status)
VALUES
(101, 1, 15000, "Paid"),
(102, 1, 22000, "Pending"),
(103, 2, 8000, "Paid"),
(104, 3, 12000, "Pending"),
(105, 3, 30000, "Paid"),
(106, 6, 9500, "Pending"),
(107, NULL, 4000, "Paid");

SELECT client_name, invoice_id, amount
FROM clients as a
INNER JOIN invoices as b
on a.client_id = b.client_id;

SELECT client_name, invoice_id, amount
FROM clients as a
LEFT JOIN invoices as b
on a.client_id = b.client_id;

SELECT client_name, invoice_id, amount
FROM clients as a
LEFT JOIN invoices as b
on a.client_id = b.client_id
WHERE b.client_id IS NULL;

SELECT client_name, invoice_id, amount
FROM clients as a
LEFT JOIN invoices as b
on a.client_id = b.client_id;

SELECT client_name, invoice_id, amount
FROM clients as a
RIGHT JOIN invoices as b
on a.client_id = b.client_id
WHERE client_name IS NULL;

SELECT client_name, invoice_id, amount FROM clients as a
LEFT JOIN invoices as b
on a.client_id = b.client_id
UNION
SELECT client_name, invoice_id, amount FROM clients as a
RIGHT JOIN invoices as b
on a.client_id = b.client_id;

























