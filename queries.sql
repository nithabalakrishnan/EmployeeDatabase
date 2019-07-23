-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.first_name ,e.last_name ,e.emp_no,e.gender ,s.salary
FROM employee e ,salaries s
WHERE e.emp_no = s.emp_no ;

--List employees who were hired in 1986.

SELECT *
FROM employee
WHERE EXTRACT (YEAR FROM hire_date) = 1986;

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, 
--and start and end employment dates.

SELECT dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employee.first_name,
	employee.last_name
FROM employee 
INNER JOIN dept_manager ON dept_manager.emp_no = employee.emp_no
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT employee.first_name,
	employee.last_name,
	employee.emp_no,
	departments.dept_name
FROM employee
INNER JOIN emp_dept ON emp_dept.emp_no = employee.emp_no
INNER JOIN departments ON emp_dept.dept_no = departments.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."

SELECT *
FROM employee e
where e.first_name = 'Hercules' 
AND e.last_name LIKE 'B%' 

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

SELECT employee.first_name,
	employee.last_name,
	employee.emp_no,
	departments.dept_name
FROM employee
INNER JOIN emp_dept ON emp_dept.emp_no = employee.emp_no
INNER JOIN departments ON emp_dept.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT employee.first_name,
	employee.last_name,
	employee.emp_no,
	departments.dept_name
FROM employee
INNER JOIN emp_dept ON emp_dept.emp_no = employee.emp_no
INNER JOIN departments ON emp_dept.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
OR  departments.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.
SELECT 
	last_name,
	COUNT(first_name)
From
	employee
GROUP BY
	last_name
ORDER BY 
	COUNT(last_name) DESC; 

	









