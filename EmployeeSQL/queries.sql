--1. List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.emp_no, s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no


--2. List the first name, last name, and hire date from the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


--3. List the manager of each dept along w/ their dept number, dept name, employee number, last name, and first name
SELECT 


--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name


--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT last_name, first_name, sex
FROM employees
WHERE (first_name = 'Hercules') and (last_name like 'B%');

--6. List each employee in the Sales department, including their employee number, last name, and first name


--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name


--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, count(last_name) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency desc;