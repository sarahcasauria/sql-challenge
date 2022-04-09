-- Dropping tables to restart the query if needed
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS titles CASCADE;

-- Creating tables --

-- Titles table
CREATE TABLE titles (
	title_id VARCHAR(50) NOT NULL,
	title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id)
);

-- Departments table
CREATE TABLE departments (
	dept_no VARCHAR(50) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Employee table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR (5) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
-- Date style is incorrect. Need to set to MDY to coincide with the csv
set datestyle to "ISO, MDY";
-- Copy the CSV using command so the datestyle can import successfully. 
-- Note have to use Public folder as Postgres cannot access other folders unless opened via administrator
COPY employees FROM 'C:\Users\Public\data\employees.csv' 
DELIMITER ',' 
CSV HEADER;

-- Employee departments table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Manager departments table
CREATE TABLE dept_manager (
	emp_no INT NOT NULL,
	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Salaries table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);