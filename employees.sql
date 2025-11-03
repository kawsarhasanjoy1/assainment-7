CREATE TABLE employees (
    employee_id INTEGER UNIQUE NOT NULL PRIMARY KEY,
    employee_name VARCHAR(30),
    age INTEGER,
    email VARCHAR(50),
    department_id INTEGER REFERENCES departments (department_id) ON DELETE CASCADE,
    salary numeric,
    status TEXT
);

SELECT * FROM employees;

INSERT INTO
    employees (
        employee_id,
        employee_name,
        age,
        email,
        department_id,
        salary,
        status
    )
VALUES (
        101,
        'Alice ',
        29,
        'alice@gmail.com',
        1,
        55000,
        'Active'
    );

-- Retrieve all employees with a salary greater than 60000
SELECT * FROM employees WHERE salary > 60000;

-- Retrieve the names of employees using a limit of 2, starting from the 3rd employee.

SELECT employee_name FROM employees LIMIT 2 OFFSET 2;

-- Calculate and display the average age of all employees.

SELECT avg(age) as average_age FROM employees;

-- Retrieve the names of employees whose email addresses contain 'example.com', 'example.net', or 'google.com'.
SELECT employee_name
FROM employees
WHERE
    email like '%example.com%'
    OR email LIKE '%example.net%'
    OR email LIKE '%google.com%';

-- Retrieve the names of all employees who belong to the department titled 'Engineering'.

SELECT employee_name
FROM employees
    INNER JOIN departments ON employees.department_id = departments.department_id
WHERE
    department_name = 'Engineering';

-- Update the status of the employee with the highest salary to 'Promoted'
-- Note: You can use a subquery to identify the employee with the highest salary,
UPDATE employees
SET
    status = 'Promoted'
WHERE
    salary = (
        SELECT MAX(salary)
        FROM employees
    );

SELECT max(salary) FROM employees;

-- Retrieve the department name and the average salary of employees in each department:

SELECT department_name, avg(salary)
FROM departments
    INNER JOIN employees ON departments.department_id = employees.department_id
GROUP BY
    department_name;