SCRIPT OBJECT NOTATION)

3. 4. 6. 7.1 BULK INSERT IN SQL SERVER:
bulk insert is a command in SQL SERVER used to quickly insert large amount of data from a file (txt,csv,etc.)instead of inserting rows one by one (which is slow)
bulk insert helps import thousand or millions of records at once,making it muchfaster

2.LIST UR FILE FORMATS THAT CAN BE IMPORTED INTO SQL SERVER:
CSV (COMMA-SEPARATED VALUES)
TXT (TEXT FILE WITH DELIMITERS
XML (EXTANSIBLE MARKUP LANGUAGE)
JSON (JAVA 
  8. 9. 12. 13. 14. 15. 16. CREATE A TABLE PRODUCTS AND INSERT THREE RECORDS INTO THE TABLE
  CREATE TABLE PRODUCTS  (PRODUCTID INT, PRODUCTNAME VARCHAR (50), PRICE DECIMAL (10,2))
INSERT INTO PRODUCTS (PRODUCTID,PRODUCTNAME,PRICE)
VALUES (1,'SMARTPHONE',4000);
INSERT INTO PRODUCTS (PRODUCTID , PRODUCTNAME , PRICE)
VALUES (2,'LAPTOP',7000);
INSERT INTO PRODUCTS (PRODUCTID ,PRODUCTNAME, PRICE )
VALUES (3,'HEADPHONES',6000)
ALTER TABLE PRODUCTS
ADD CONSTRAINT UQ_PRODUCTNAME UNIQUE (PRODUCTNAME)
bulk insert products
from 'C:\data\products3.txt'
with (
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 );
ALTER TABLE PRODUCTS
ADD CONSTRAINT FK_PRODUCTS_CATEGORIES
FOREIGN KEY (CATEGORYID)REFERENCES CATEGORIES (CATEGORYID);
ALTER TABLE PRODUCTS
ADD CONSTRAINT CHK_PRICE CHECK (PRICE > 0);
ALTER TABLE PRODUCTS 
ADD STOCK INT NOT NULL DEFAULT 0;
SELECT PRODUCTID,PRODUCTNAME,ISNULL (PRICE,0) AS PRICE FROM PRODUCTDS
SELECT * FROM PRODUCTS
  5.EXPLAIN THE DIFFERENCE BETWEEN NULL AND NOT NULL
NULL-MEANS VALUE IS MISSING OR UNKNOWN: FOR EXAMPLE IF A PRODUCT DOESNT YET HAVE A PRICE,THE PRICE COLUMN COULD BE NULL
NOT NULL-MEANS COLUMN MUST ALWAYS HAVE A VALUE: FOR EXAMPLE PRODUCTNAME CANT BE EMPTY IF DEFINED AS NOT NULL

10. EXPLAIN THE PURPOSE OF THE IDENTITY COLUMN IN SQL SERVER
IDENTITY-property automatically generates unique numbers for a column whenever a new row is inserted,it is often used for primary key columns 
so you dont have to manually enter ids

11. USE BULK INSERT TO IMPORT DATA FROM A TEXT FILE INTO THE PRODUCT TABLE

13 PRIMARY KEY
 Ensures each row is unique.
  Cannot have NULL values.
  Only one primary key is allowed per table.
  UNIQUE KEY
  Ensures values are unique in a column.
  Can have one NULL value.
  A table can have multiple unique keys

  17.Purpose: A FOREIGN KEY links two tables together by enforcing a relationship.
  Usage:
  Ensures data consistency (a product must belong to a valid category).
  Prevents invalid data (you can’t insert a product with a CategoryID that doesn’t exist in Categories).
  Helps maintain referential integrity between tables
 18. CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 18)
);
CREATE TABLE CATEGORIES (CATEGORYID INT PRIMARY KEY,CATEGORYNAME VARCHAR (50) UNIQUE)
19. CREATE TABLE InvoiceNumbers (
    InvoiceID INT IDENTITY(100,10) PRIMARY KEY,
    InvoiceDate DATE
);
20. CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);
22. CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE
);
23. CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
