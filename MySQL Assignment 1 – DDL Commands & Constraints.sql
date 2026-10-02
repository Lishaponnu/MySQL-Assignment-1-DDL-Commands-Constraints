-- TABLE Creation
CREATE DATABASE employee;
USE employee; 
CREATE TABLE DepartmentS (department_id INT PRIMARY KEY, department_name varchar(100) NOT NULL UNIQUE);
 
CREATE TABLE Location (location_id INT PRIMARY KEY AUTO_INCREMENT, Location_Name VARCHAR(100) NOT NULL UNIQUE);

CREATE TABLE Employees (employee_id INT PRIMARY KEY, employee_name VARCHAR(100) NOT NULL, 
age INT CHECK (age >= 18),
gender CHAR(1) CHECK (gender IN ('M','F')),
designation VARCHAR(100),
department_id INT, 
location_id INT, 
hire_date DATE DEFAULT (CURRENT_DATE),

CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES Departments(department_id),

CONSTRAINT fk_employee_location
FOREIGN KEY (location_id)
REFERENCES Location(location_id)); 

SHOW TABLES;

DESC Departments;
DESC Location;
DESC Employees;

-- ALTER TABLE
ALTER TABLE Employees
ADD email VARCHAR(150);

ALTER TABLE Employees 
MODIFY designation VARCHAR(200);

ALTER TABLE Employees
DROP COLUMN age;

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

-- RENAME TABLES
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
SHOW TABLES;

-- TRUNCATE Employee
TRUNCATE TABLE Employees;

-- DROP Employees
DROP TABLE Employees;
DROP DATABASE Employee;

-- DATABASE RECREATION
DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

CREATE TABLE Departments (department_id INT PRIMARY KEY,
department_name VARCHAR(100) NOT NULL UNIQUE); 

CREATE TABLE Location (location_id INT AUTO_INCREMENT PRIMARY KEY, 
location_name VARCHAR(100) NOT NULL UNIQUE);

CREATE TABLE Employees (employee_id INT PRIMARY KEY,
employee_name VARCHAR(100) NOT NULL,
age INT CHECK (age >= 18),
gender CHAR(1) CHECK (gender IN ('M', 'F')),
designation VARCHAR(100),
department_id INT,
location_id INT,
hire_date DATE DEFAULT (CURRENT_DATE),

CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES Departments(department_id),

CONSTRAINT fk_employee_location
FOREIGN KEY (location_id)
REFERENCES Location(location_id));

 

  






