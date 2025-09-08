EASY LEVEL TASKS
create database lesson_4
use lesson_4

create table employees (
    empid int primary key,
    firstname varchar (50),
    lastname varchar(50),
    departmentname varchar(50),
    salary decimal(10,2),
    email varchar(100)
);
select top 5 * from employees
select *
from employees where salary >=60000
and departmentname = 'HR'
select isnull (email, 'charlie.brown@example.com') as emailaddress from employees
insert into employees (empid, firstname, lastname, departmentname, salary, email) values
(1, 'Alice', 'Smith', 'HR', 65000, 'alice.smith@example.com'),
(2, 'Bob', 'Johnson', 'IT', 72000, NULL),
(3, 'Charlie', 'Brown', 'Finance', 55000, 'charlie.brown@example.com'),
(4, 'David', 'Miller', 'HR', 60000, NULL),
(5, 'Eve', 'Davis', 'IT', 80000, 'eve.davis@example.com'),
(6, 'Frank', 'Wilson', 'Marketing', 45000, 'frank.wilson@example.com');


create table products (
   productid int primary key,
    productname varchar(100),
    category varchar(50),
    price decimal(10,2)
);
select distinct category from products
select * from products
where price > 100
select * from products
order by price asc
select * from products
where price between 50 and 100
select distinct category , productname from products
select distinct category , productname from products
order by productname desc
insert into products (productid, productname, category, price) values
(101, 'Laptop', 'Electronics', 1200),
(102, 'Smartphone', 'Electronics', 800),
(103, 'Headphones', 'Electronics', 75),
(104, 'Office Chair', 'Furniture', 150),
(105, 'Desk', 'Furniture', 95),
(106, 'Water Bottle', 'Accessories', 20),
(107, 'Backpack', 'Accessories', 60),
(108, 'Pen', 'Stationery', 5),
(109, 'Notebook', 'Stationery', 15),
(110, 'Printer', 'Electronics', 250);


 create table customers (
    customerid int primary key,
    firstname varchar(50),
   lastname varchar(50)
);
select *
from customers
where firstname like 'a%'
insert into customers (customerid, firstname, lastname) values
(201, 'Anna', 'Taylor'),
(202, 'Alex', 'Harris'),
(203, 'Brian', 'Moore'),
(204, 'Amelia', 'Clark'),
(205, 'John', 'Walker'),
(206, 'Alice', 'White');


MEDIUM LEVEL TASKS
create database lesson_4
use lesson_4

create table employees (
    empid int primary key,
    firstname varchar (50),
    lastname varchar(50),
    departmentname varchar(50),
    salary decimal(10,2),
    email varchar(100),
  age int
  
);

insert into employees (empid, firstname, lastname, departmentname, salary, email,age) values
(1, 'Alice', 'Smith', 'HR', 65000, 'alice.smith@example.com',34),
(2, 'Bob', 'Johnson', 'IT', 72000, NULL,21,41),
(3, 'Charlie', 'Brown', 'Finance', 55000, 'charlie.brown@example.com',5),
(4, 'David', 'Miller', 'HR', 60000, NULL,6),
(5, 'Eve', 'Davis', 'IT', 80000, 'eve.davis@example.com',76),
(6, 'Frank', 'Wilson', 'Marketing', 45000, 'frank.wilson@example.com',65);
select coalesce (firstname, lastname) as name from employees
select * from employees
select *
from employees
order by salary desc
offset 1 rows fetch next 5 rows only
select *
from employees
where (age between 30 and 40)
or departmentname = 'Marketing'
select * from employees
where departmentname in ('HR','IT','Finance')
create table products (
   productid int primary key,
    productname varchar(100),
    category varchar(50),
    price decimal(10,2),
  stockquantity int
);
insert into products (productid, productname, category, price,stockquantity) values
(101, 'Laptop', 'Electronics', 1200,15),
(102, 'Smartphone', 'Electronics', 800,30),
(103, 'Headphones', 'Electronics', 75,200),
(104, 'Office Chair', 'Furniture', 150,5),
(105, 'Desk', 'Furniture', 95,60),
(106, 'Water Bottle', 'Accessories', 20,210),
(107, 'Backpack', 'Accessories', 60,80),
(108, 'Pen', 'Stationery', 5,16),
(109, 'Notebook', 'Stationery', 15,19),
(110, 'Printer', 'Electronics', 250,4);
select top 10 * from products 
order by price desc
select distinct category,price
from products
select *
from products where price <=1000
and stockquantity > 50
order by stockquantity asc
select * from products
where productname like '%e%'
 create table customers (
    customerid int primary key,
    firstname varchar(50),
   lastname varchar(50),
   city varchar (50),
   postalcode int
);
insert into customers (customerid, firstname, lastname,city,postalcode) values
(201, 'Anna', 'Taylor','tashkent',4),
(202, 'Alex', 'Harris','singapure',10),
(203, 'Brian', 'Moore','germany',21),
(204, 'Amelia', 'Clark','london',34),
(205, 'John', 'Walker','paris',39),
(206, 'Alice', 'White','india',48);
select *
from customers
where firstname like 'a%'
select * from customers
order by city asc
select *
from customers
order by city asc,postalcode desc


HARD LEVEL TASKS

create database lesson4
use lesson4
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2)
);
select top 5 * from Sales
order by SaleAmount desc
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES
(1, 1, 1, '2023-01-01', 150.00),
(2, 2, 2, '2023-01-02', 200.00),
(3, 3, 3, '2023-01-03', 250.00),
(4, 4, 4, '2023-01-04', 300.00),
(5, 5, 5, '2023-01-05', 350.00),
(6, 6, 6, '2023-01-06', 400.00),
(7, 7, 7, '2023-01-07', 450.00),
(8, 8, 8, '2023-01-08', 500.00),
(9, 9, 9, '2023-01-09', 550.00),
(10, 10, 10, '2023-01-10', 600.00),
(11, 1, 1, '2023-01-11', 150.00),
(12, 2, 2, '2023-01-12', 200.00),
(13, 3, 3, '2023-01-13', 250.00),
(14, 4, 4, '2023-01-14', 300.00),
(15, 5, 5, '2023-01-15', 350.00),
(16, 6, 6, '2023-01-16', 400.00),
(17, 7, 7, '2023-01-17', 450.00),
(18, 8, 8, '2023-01-18', 500.00),
(19, 9, 9, '2023-01-19', 550.00),
(20, 10, 10, '2023-01-20', 600.00),
(21, 1, 2, '2023-01-21', 150.00),
(22, 2, 3, '2023-01-22', 200.00),
(23, 3, 4, '2023-01-23', 250.00),
(24, 4, 5, '2023-01-24', 300.00),
(25, 5, 6, '2023-01-25', 350.00),
(26, 6, 7, '2023-01-26', 400.00),
(27, 7, 8, '2023-01-27', 450.00),
(28, 8, 9, '2023-01-28', 500.00),
(29, 9, 10, '2023-01-29', 550.00),
(30, 10, 1, '2023-01-30', 600.00),
(31, 1, 2, '2023-02-01', 150.00),
(32, 2, 3, '2023-02-02', 200.00),
(33, 3, 4, '2023-02-03', 250.00),
(34, 4, 5, '2023-02-04', 300.00),
(35, 5, 6, '2023-02-05', 350.00),
(36, 6, 7, '2023-02-06', 400.00),
(37, 7, 8, '2023-02-07', 450.00),
(38, 8, 9, '2023-02-08', 500.00),
(39, 9, 10, '2023-02-09', 550.00),
(40, 10, 1, '2023-02-10', 600.00);




CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Orders VALUES
(1, 1, 2, '2023-05-14', 1, 800.00),
(2, 2, 3, '2024-09-07', 2, 800.00),
(3, 3, 4, '2022-11-22', 1, 250.00),
(4, 4, 5, '2021-03-30', 3, 150.00),
(5, 5, 6, '2025-07-19', 1, 30.00),
(6, 6, 7, '2022-08-25', 2, 300.00),
(7, 7, 8, '2024-06-10', 1, 200.00),
(8, 8, 9, '2021-12-04', 4, 40.00),
(9, 9, 10, '2023-02-18', 1, 10.00),
(10, 10, 11, '2025-09-27', 2, 360.00),
(11, 11, 12, '2023-10-11', 1, 500.00),
(12, 12, 13, '2024-04-03', 1, 25.00),
(13, 13, 14, '2022-07-29', 2, 60.00),
(14, 14, 15, '2021-01-22', 3, 135.00),
(15, 15, 16, '2025-11-15', 1, 80.00),
(16, 16, 17, '2022-10-08', 1, 60.00),
(17, 17, 18, '2023-06-21', 2, 40.00),
(18, 18, 19, '2021-09-13', 5, 50.00),
(19, 19, 20, '2025-03-05', 2, 50.00),
(20, 20, 21, '2024-08-14', 1, 60.00),
(21, 21, 22, '2022-12-01', 1, 100.00),
(22, 22, 23, '2023-09-09', 1, 15.00),
(23, 23, 24, '2021-07-18', 2, 180.00),
(24, 24, 25, '2025-06-23', 3, 15.00),
(25, 25, 26, '2023-03-12', 4, 100.00),
(26, 26, 27, '2022-04-07', 1, 450.00),
(27, 27, 28, '2024-11-30', 1, 600.00),
(28, 28, 29, '2021-02-25', 1, 500.00),
(29, 29, 30, '2025-05-28', 2, 240.00),
(30, 30, 31, '2023-08-20', 1, 350.00),
(31, 31, 32, '2022-01-17', 1, 450.00),
(32, 32, 33, '2025-09-10', 1, 40.00),
(33, 33, 34, '2021-04-04', 2, 100.00),
(34, 34, 35, '2024-07-15', 3, 120.00),
(35, 35, 36, '2022-10-31', 1, 60.00),
(36, 36, 37, '2023-12-22', 1, 35.00),
(37, 37, 38, '2021-06-06', 2, 110.00),
(38, 38, 39, '2025-02-01', 1, 40.00),
(39, 39, 40, '2023-11-26', 3, 120.00),
(40, 40, 1, '2024-03-09', 1, 1200.00);





CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NULL,
    LastName VARCHAR(50) NULL,
    DepartmentName VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE,
    Age INT,
    Email VARCHAR(100) NULL,
    Country VARCHAR(50)
);
select FirstName + ' ' + LastName as FullName
from Employees
select* from Employees
where Age < 30
and DepartmentName in ('HR','IT')
select *
from Employees
where Salary from Employees
where DepartmentName = 'Sales')
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentName, Salary, HireDate, Age, Email, Country) VALUES
(1, 'John', 'Doe', 'IT', 55000.00, '2020-01-01', 30, 'johndoe@example.com', 'USA'),
(2, 'Jane', 'Smith', 'HR', 65000.00, '2019-03-15', 28, 'janesmith@example.com', 'USA'),
(3, NULL, 'Johnson', 'Finance', 45000.00, '2021-05-10', 25, NULL, 'Canada'),
(4, 'James', 'Brown', 'Marketing', 60000.00, '2018-07-22', 35, 'jamesbrown@example.com', 'UK'),
(5, 'Patricia', NULL, 'HR', 70000.00, '2017-08-30', 40, NULL, 'USA'),
(6, 'Michael', 'Miller', 'IT', 75000.00, '2020-12-12', 27, 'michaelm@example.com', 'Germany'),
(7, 'Linda', NULL, 'Finance', 48000.00, '2016-11-02', 42, NULL, 'Canada'),
(8, 'David', 'Moore', 'Marketing', 85000.00, '2021-09-01', 29, 'davidm@example.com', 'UK'),
(9, 'Elizabeth', 'Taylor', 'HR', 60000.00, '2019-05-18', 31, 'elizabetht@example.com', 'USA'),
(10, 'William', NULL, 'IT', 64000.00, '2020-04-10', 26, NULL, 'Germany'),
(11, NULL, 'Thomas', 'Finance', 47000.00, '2017-01-25', 38, NULL, 'Canada'),
(12, 'Joseph', 'Jackson', 'Marketing', 78000.00, '2016-09-30', 44, 'josephj@example.com', 'UK'),
(13, 'Karen', 'White', 'HR', 59000.00, '2018-06-10', 33, 'karenw@gmail.com', 'USA'),
(14, 'Steven', NULL, 'IT', 71000.00, '2021-07-15', 24, NULL, 'Germany'),
(15, 'Nancy', 'Clark', 'Finance', 45000.00, '2020-02-20', 27, 'nancyc@example.com', 'Canada'),
(16, 'George', 'Lewis', 'Marketing', 80000.00, '2019-11-10', 36, 'georgel@example.com', 'UK'),
(17, 'Betty', NULL, 'HR', 55000.00, '2017-04-05', 41, NULL, 'USA'),
(18, 'Samuel', 'Walker', 'IT', 72000.00, '2021-03-22', 23, 'samuelw@example.com', 'Germany'),
(19, 'Helen', 'Hall', 'Finance', 49000.00, '2018-10-16', 34, 'helenh@example.com', 'Canada'),
(20, NULL, 'Allen', 'Marketing', 90000.00, '2015-08-11', 50, NULL, 'UK'),
(21, 'Betty', 'Young', 'HR', 53000.00, '2020-05-17', 28, 'bettyy@gmail.com', 'USA'),
(22, 'Frank', NULL, 'IT', 67000.00, '2021-02-02', 26, 'frankk@example.com', 'Germany'),
(23, 'Deborah', 'Scott', 'Finance', 47000.00, '2019-07-09', 29, NULL, 'Canada'),
(24, 'Matthew', 'Green', 'Marketing', 76000.00, '2021-01-15', 30, 'matthewg@example.com', 'UK'),
(25, NULL, 'Adams', 'HR', 54000.00, '2020-06-21', 27, NULL, 'USA'),
(26, 'Paul', 'Nelson', 'IT', 71000.00, '2018-12-03', 37, 'pauln@example.com', 'Germany'),
(27, 'Margaret', NULL, 'Finance', 46000.00, '2020-08-19', 25, 'margaretc@example.com', 'Canada'),
(28, 'Anthony', 'Mitchell', 'Marketing', 82000.00, '2021-04-10', 29, NULL, 'UK'),
(29, 'Lisa', 'Perez', 'HR', 60000.00, '2021-03-05', 24, 'lisap@example.com', 'USA'),
(30, NULL, 'Roberts', 'IT', 69000.00, '2019-09-24', 32, NULL, 'Germany'),
(31, 'Jessica', 'Gonzalez', 'Finance', 47000.00, '2017-12-13', 38, 'jessicag@gamil.com', 'Canada'),
(32, 'Brian', NULL, 'Marketing', 85000.00, '2018-11-05', 35, NULL, 'UK'),
(33, 'Dorothy', 'Evans', 'HR', 59000.00, '2019-06-11', 31, 'dorothye@example.com', 'USA')
