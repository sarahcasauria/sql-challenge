-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp_no, last_name, first_name, sex, 
	(select salary
 	from salaries
 	where employees.emp_no = salaries.emp_no)
FROM employees 
LIMIT 10;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >='01-01-1986' and hire_date <'01-01-1987'
ORDER BY hire_date ASC;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT * FROM dept_manager;
-- Should only be 24 responses as there are 24 managers
SELECT dept_no, 
	(SELECT dept_name
	FROM departments
	WHERE dept_manager.dept_no = departments.dept_no),
	(SELECT emp_no
	FROM employees
	WHERE dept_manager.emp_no = employees.emp_no),
	(SELECT last_name
	FROM employees
	WHERE dept_manager.emp_no = employees.emp_no),
	(SELECT first_name
	FROM employees
	WHERE dept_manager.emp_no = employees.emp_no)
FROM dept_manager;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
CREATE VIEW employee_depts AS
SELECT emp_no,
	(SELECT last_name
	FROM employees
	WHERE dept_emp.emp_no = employees.emp_no),
	(SELECT first_name
	FROM employees
	WHERE dept_emp.emp_no = employees.emp_no),
	(SELECT dept_name
	FROM departments
	WHERE dept_emp.dept_no = departments.dept_no)
FROM dept_emp;

SELECT * from employee_depts;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE '%B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- Using view created previously
SELECT * from employee_depts
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- Using view created previously
SELECT * FROM employee_depts
WHERE dept_name = 'Sales' or dept_name = 'Development';

-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count DESC;