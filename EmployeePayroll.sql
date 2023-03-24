--Creating Database PayrollService
CREATE DATABASE Payroll_Service_DB;

--Create table
CREATE TABLE employee_payroll 
(
	id INT IDENTITY PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   salary MONEY DEFAULT 1000,
   startDate DATETIME DEFAULT GetDate()
);

SELECT * From employee_payroll;

--Insert Table
INSERT INTO employee_payroll(name, salary, startDate) VALUES
('Rohan', 20000, '2023-04-10'),
('Mandar', 20000, '2023-03-11'),
('Shubham', 30000, '2020-10-15'),
('Priya', 20000, '2023-01-6'),
('Aditya', 20000, '2021-02-14'),
('John', 30000, '2020-8-15'),
('Esha', 20000, '2022-01-6');