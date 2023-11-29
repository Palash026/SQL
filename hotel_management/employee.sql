create table employee (
    employee_id int AUTO_INCREMENT primary key,
    salary float,
    joining_date date,
    resigning_date date default null
);

INSERT INTO employee (salary, joining_date, resigning_date) VALUES
(50000.00, '2023-01-01', NULL),
(60000.00, '2023-02-15', '2023-08-31'),
(75000.00, '2023-03-10', NULL),
(55000.00, '2023-04-05', NULL),
(70000.00, '2023-05-20', NULL),
(80000.00, '2023-06-15', '2023-11-30'),
(60000.00, '2023-07-01', NULL),
(90000.00, '2023-08-10', '2023-12-15'),
(65000.00, '2023-09-05', NULL),
(75000.00, '2023-10-15', NULL),
(70000.00, '2023-11-20', NULL),
(85000.00, '2023-12-01', '2024-06-30'),
(72000.00, '2024-01-15', NULL),
(95000.00, '2024-02-20', NULL),
(78000.00, '2024-03-10', '2024-09-30'),
(67000.00, '2024-04-05', NULL),
(88000.00, '2024-05-20', NULL),
(82000.00, '2024-06-15', NULL),
(92000.00, '2024-07-01', '2024-12-31'),
(70000.00, '2024-08-10', NULL);

select * from employee;

