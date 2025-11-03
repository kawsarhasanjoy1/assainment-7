CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

ALTER TABLE departments RENAME deprtment_name To department_name;

INSERT INTO departments (department_id, department_name) VALUES(2, 'Finance'),
(3, 'Marketing'),
(4, 'Sales'),
(5, 'Customer Support'),
(6, 'IT'),
(7, 'Engineering'),
(8, 'Research and Development'),
(9, 'Quality Assurance'),
(10, 'Operations'),
(11, 'Procurement'),
(12, 'Legal'),
(13, 'Public Relations'),
(14, 'Administration'),
(15, 'Training'),
(16, 'Security'),
(17, 'Logistics'),
(18, 'Planning'),
(19, 'Business Development'),
(20, 'Product Management');

SELECT * FROM departments;
