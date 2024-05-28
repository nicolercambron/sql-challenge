SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

SELECT
    d.dept_no AS department_number,
    d.dept_name AS department_name,
    e.emp_no AS employee_number,
    e.last_name,
    e.first_name
FROM
    departments d
JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
JOIN
    employees e ON dm.emp_no = e.emp_no;

SELECT
    d.dept_no AS department_number,
    e.emp_no AS employee_number,
    e.last_name,
    e.first_name,
    d.dept_name AS department_name
FROM
    employees e
JOIN
    dept_emp de ON e.emp_no = de.emp_no
JOIN
    departments d ON de.dept_no = d.dept_no;

SELECT
    first_name,
    last_name,
    sex
FROM
    employees
WHERE
    first_name = 'Hercules' AND
    last_name LIKE 'B%';

SELECT
    e.emp_no AS employee_number,
    e.last_name,
    e.first_name,
    d.dept_name AS department_name
FROM
    employees e
JOIN
    dept_emp de ON e.emp_no = de.emp_no
JOIN
    departments d ON de.dept_no = d.dept_no
WHERE
    d.dept_name = 'Sales';

SELECT
    e.emp_no AS employee_number,
    e.last_name,
    e.first_name,
    d.dept_name AS department_name
FROM
    employees e
JOIN
    dept_emp de ON e.emp_no = de.emp_no
JOIN
    departments d ON de.dept_no = d.dept_no
WHERE
    d.dept_name IN ('Sales', 'Development');

SELECT
    last_name,
    COUNT(*) AS frequency
FROM
    employees
GROUP BY
    last_name
ORDER BY
    frequency DESC;
