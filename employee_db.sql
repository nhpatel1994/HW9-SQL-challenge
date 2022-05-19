-- HW9-SQL-challenge, by Nikunj Patel
-- 'Data Engineering' of the Employee Database
-- As specified by the .README file in the HW Instructions

-- Create a table for departments.csv
CREATE TABLE departments (
  dept_no VARCHAR(5),
  dept_name VARCHAR(30),
  PRIMARY KEY (dept_no)
);

-- Create a table for dept_emp.csv
CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(5),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create a table for dept_manager.csv
CREATE TABLE dept_manager (
  dept_no VARCHAR(5),
  emp_no INT,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create a table for titles.csv
CREATE TABLE titles (
  title_id VARCHAR(5),
  title VARCHAR(30),
  PRIMARY KEY (title_id)
);

-- Create a table for employees.csv
CREATE TABLE employees (
  emp_no INT,
  emp_title_id VARCHAR(5),
  birth_date DATE,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  sex VARCHAR(1),
  hire_date DATE,
  PRIMARY KEY(emp_no),
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create a table for salaries.csv
CREATE TABLE salaries (
  emp_no INT,
  salary INT
);

--Use the rows below to display and view the 6 csv files separately.
--SELECT * FROM departments;
--SELECT * FROM dept_emp;
--SELECT * FROM dept_manager;
--SELECT * FROM titles;
--SELECT * FROM employees;
--SELECT * FROM salaries;