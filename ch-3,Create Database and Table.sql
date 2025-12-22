CREATE TABLE employee(
	employee_id SERIAL primary key,
	name varchar(100) NOT NULL,
	position varchar(50),
	department varchar(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

SELECT * 