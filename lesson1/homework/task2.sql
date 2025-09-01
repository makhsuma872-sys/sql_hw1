BASIC LEVEL TASKS 1,2,3,4,6,7,8,10
  
CREATE DATABASE EmployeesDB
CREATE TABLE Employees (EmpID INT,Name VARCHAR (50),Salary DECIMAL (10,2))
INSERT INTO Employees (EmpID,Name, Salary) VALUES (4,'Alisa',4000),(8,'Guli',8000),(2,'Zazo',5000)
UPDATE Employees
SET Salary = 7000
WHERE EmpID = 4
DELETE FROM Employees
WHERE EmpID = 2
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100); 
ALTER TABLE Employees 
ADD Department VARCHAR (50)
ALTER TABLE Employees
ALTER COLUMN Salary FLOAT
TRUNCATE TABLE Employees
SELECT * FROM Employees
  
BASIC LEVEL TASKS 5
DELETE-removes specific rows from table (using condition where)
TRUNCATE-removes all rows at once (table structure stays)
DROP-Deletes entire table (data+structure)

BASIC LEVEL TASKS 9
CREATE DATABASE DepartmentsID
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY,DepartmentName VARCHAR(50))
SELECT * FROM Departments

INTERMEDIATE-LEVEL TASKS
CREATE DATABASE DepartmentsID
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY,DepartmentName VARCHAR(50),Employees VARCHAR(50),Salary INT)
INSERT INTO Departments (DepartmentID,DepartmentName,Employees,Salary)
SELECT 2, 'Marketing','Michael',8000
UNION ALL
SELECT 4, 'MAAB','Alice',7000
UNION ALL
SELECT 8,'FINANCE','Mixail',4000
UNION ALL
SELECT 6,'HR','Megan',3000
UNION ALL
SELECT 1,'MANAGEMENT','Safia',9000
Update Departments 
SET Employees = 'Manager'
WHERE Salary > 5000
--TRUNCATE TABLE Departments
DROP TABLE Departments
SELECT * FROM Departments

ADVANCED-LEVEL TASKS
SORRY CANT CATCH COMMANDS
