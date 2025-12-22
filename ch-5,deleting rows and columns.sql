CREATE TABLE employee2(
    employee_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    salary NUMERIC(10, 2)
    
);
ALTER TABLE employee2
ADD COLUMN address VARCHAR(50);

SELECT * FROM EMPLOYEE2;

INSERT INTO employee2 (employee_id, name, position, department, hire_date, salary, address)
VALUES
    (101, 'Rohan Dangal', 'Data Analyst', 'Data Science', '2025-12-02', 148000.00, 'Damak'),
    (102, 'Sarah Jones', 'Data Scientist', 'Analytics', '2024-05-10', 160000.00, 'Kathmandu'),
    (103, 'Michael Chen', 'Data Engineer', 'Engineering', '2023-08-20', 155000.00, 'Pokhara'),
    (104, 'Emily Williams', 'Business Analyst', 'Marketing', '2025-01-15', 130000.00, 'Lalitpur'),
    (105, 'David Brown', 'BI Developer', 'IT', '2022-11-25', 145000.00, 'Biratnagar');

	DELETE FROM employee2
	WHERE employee_id = 103;

	ALTER TABLE employee2
	DROP COLUMN address;
