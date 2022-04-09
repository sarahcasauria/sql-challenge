# Unit 9 Homework: Employee Database

## Background
It’s a beautiful spring day, and it’s been two weeks since you were hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.

## Instructions
This assignment is divided into three parts: data modeling, data engineering, and data analysis. 

### Data Modelling
Inspect the CSVs and sketch out an ERD of the tables.

An Entity Relationship Diagram was created to assist in visualising the data tables.
* The ERD image can be found at [Entity Relationship Diagram/ERD.png](https://github.com/sarahcasauria/sql-challenge/blob/main/Entity%20Relationship%20Diagram/ERD.png)

### Data Engineering
Use the provided information to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
* The schema used to create the tables can be found at [Entity Relationship Diagram/ERD-schema.sql](https://github.com/sarahcasauria/sql-challenge/blob/main/Entity%20Relationship%20Diagram/ERD-schema.sql)

### Data Analysis
Once you have a complete database, perform these steps:
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

* The analysis file can be found at [EmployeeSQL/EmployeeSQL_queries.sql](https://github.com/sarahcasauria/sql-challenge/blob/main/EmployeeSQL/EmployeeSQL_queries.sql)
* Screenshots of each query were also taken. These can be found in the folder [EmployeeSQL/query screenshots/](https://github.com/sarahcasauria/sql-challenge/tree/main/EmployeeSQL/query%20screenshots)

### Bonus (Optional)
As you examine the data, you begin to suspect that the dataset is fake. Maybe your boss gave you spurious data in order to test the data engineering skills of a new employee? To confirm your hunch, you decide to create a visualization of the data to present to your boss.

* The analysis notebook can be found at [EmployeeSQL/EmployeeSQL_analysis.ipynb](https://github.com/sarahcasauria/sql-challenge/blob/main/EmployeeSQL/EmployeeSQL_analysis.ipynb)
* The graphs generated from the analysis can be located at [EmployeeSQL/graphs/](https://github.com/sarahcasauria/sql-challenge/tree/main/EmployeeSQL/graphs)
