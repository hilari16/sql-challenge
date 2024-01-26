--1. List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.emp_no, s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no;


--2. List the first name, last name, and hire date from the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


--3. List the manager of each dept along w/ their dept number, dept name, employee number, last name, and first name
SELECT d.dept_no, d.dept_name, e.emp_title_id, e.last_name, e.first_name
FROM dept_emp as de
LEFT JOIN departments as d ON
d.dept_no = de.dept_no
LEFT JOIN employees as e ON
e.emp_no = de.emp_no
WHERE e.emp_title_id LIKE 'm%';


--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
INNER JOIN departments as d ON
d.dept_no = de.dept_no
INNER JOIN employees as e ON
e.emp_no = de.emp_no;


--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT last_name, first_name, sex
FROM employees
WHERE (first_name = 'Hercules') and (last_name like 'B%');

--6. List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.last_name, e.first_name
FROM dept_emp as de
LEFT JOIN departments as d ON
d.dept_no = de.dept_no
INNER JOIN employees as e ON
e.emp_no = de.emp_no
WHERE de.dept_no LIKE 'd007%';

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp as de
LEFT JOIN departments as d ON
d.dept_no = de.dept_no
INNER JOIN employees as e ON
e.emp_no = de.emp_no
WHERE (de.dept_no LIKE 'd007%') OR (de.dept_no LIKE 'd005%');


--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, count(last_name) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency desc;