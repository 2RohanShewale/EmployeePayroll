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
