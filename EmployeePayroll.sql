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

--Retrieve data from table
SELECT * FROM employee_payroll;

--ability to retrieve perticular emlloyee
SELECT salary FROM employee_payroll WHERE name = 'Rohan';
--joined
SELECT * FROM employee_payroll WHERE startDate BETWEEN CAST('2021-01-01' AS DATE) AND GETDATE();

--UC6 add column gender and set gender
ALTER TABLE employee_payroll ADD gender varchar(1);

update employee_payroll set gender = 'M' where name = 'Rohan';
update employee_payroll set gender = 'M' where name = 'Mandar';
update employee_payroll set gender = 'M' where name = 'Shubham';
update employee_payroll set gender = 'F' where name = 'Aditya';
update employee_payroll set gender = 'F' where name = 'John';
update employee_payroll set gender = 'F' where name = 'Priya';
update employee_payroll set gender = 'F' where name = 'Esha';

--UC 7 to get Sum, Avg, Min, Max and no. of male and Female employee.
SELECT SUM(salary) As men FROM employee_payroll     
WHERE Gender = 'M' 
GROUP BY Gender;

-- The SUM() function returns the total sum of a numeric column. 
SELECT SUM(salary) FROM employee_payroll 
WHERE Gender = 'F' 
GROUP BY Gender;

Select Gender, SUM(salary) From employee_payroll GROUP BY Gender;
Select Gender, AVG(salary) From employee_payroll GROUP BY Gender;
Select Gender, MIN(salary) From employee_payroll GROUP BY Gender;
Select Gender, MAX(salary) From employee_payroll GROUP BY Gender;
Select Gender, COUNT(name) From employee_payroll GROUP BY Gender;

--Uc8
ALTER TABLE employee_payroll ADD phone_number BIGINT;
ALTER TABLE employee_payroll ADD address VARCHAR(50);
TRUNCATE TABLE employee_payroll;
ALTER TABLE employee_payroll ADD department VARCHAR(50) NOT NULL;