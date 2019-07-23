-- Creating departments table
CREATE TABLE departments(
dept_no varchar PRIMARY KEY,
dept_name varchar(100)UNIQUE NOT NULL);
--

SELECT * FROM departments;

-- Creating table employee

CREATE TABLE employee(
	emp_no varchar(10) PRIMARY KEY,
	birth_date date,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	gender varchar(10),
	hire_date date) NOT NULL;

SELECT * FROM employee;

-- Creating salary table

CREATE TABLE salaries (
	emp_no varchar(10) NOT NULL,
	salary integer NOT NULL,
	from_date date NOT null,
	to_date date NOT null,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
	);

SELECT * FROM salaries ;

-- Creating Titles table.
CREATE TABLE titles (
	emp_no varchar(10) NOT NULL,
	title varchar(25),
	from_date date ,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
	);

SELECT * FROM titles;

-- Creating employee department table
CREATE TABLE emp_dept(
	emp_no varchar(10) NOT NULL,
	dept_no varchar(10) NOT NULL,
	from_date date,
	to_date date, 
	FOREIGN KEY(emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
	);

SELECT * FROM emp_dept ;

-- Creating department manager table
CREATE TABLE dept_manager (
	dept_no varchar(10) NOT NULL,
	emp_no varchar(10) NOT NULL,
	from_date date,
	to_date date,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
	);

SELECT * FROM dept_manager ;



