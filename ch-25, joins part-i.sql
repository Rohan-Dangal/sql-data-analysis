--how to use join in sql.
1.inner join- retrives record with matching values from both tables.
2.left join(left outer join):
retrives all the record from left table and matching record from right table, the 
unmatched record from right table is considered as null.

3.right join(right outer join):
retrives all the record from right table and matching record from left table, the 
unmatched record from left table is considered as null.

4.full join(full outer join):
retrives both matching and non matching records from both left and right table.

5. cross join:
combines all rows from both tables

6. self join:
joins a table to itself.

-- Employee table
CREATE TABLE employee6 (
    emp_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dep_id INT
);

-- Department table
CREATE TABLE department (
    dep_id INT,
    dep_name VARCHAR(50)
);

INSERT INTO employee6 (emp_id, first_name, last_name, dep_id) VALUES
(1, 'Rohan', 'Dangal', 101),
(2, 'Anisha', 'Sharma', 102),
(3, 'Sandeep', 'Thapa', 103),
(4, 'Priya', 'Koirala', NULL),
(5, 'Bikash', 'Gurung', 101);

INSERT INTO department (dep_id, dep_name) VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Marketing'),
(104, 'Finance');

SELECT * FROM employee6;

SELECT * FROM department;

--use of ineer join (dep_id is common)

SELECT e.emp_id,e.first_name,e.dep_id,
       d.dep_id,d.dep_name
FROM employee6 e
INNER JOIN department d
ON e.dep_id = d.dep_id
ORDER BY emp_id;


--use of left join(retrives all the value from left and common value from right)

SELECT e.dep_id,e.first_name,e.dep_id,
       d.dep_id,d.dep_name
FROM employee6 e
LEFT JOIN department d
ON e.dep_id = d.dep_id;

--use of right join(retrives all the value from right and common value from left)
SELECT e.emp_id,e.first_name,e.dep_id,
       d.dep_id,d.dep_name
FROM employee6 e
right JOIN department d
ON e.dep_id = d.dep_id
ORDER BY emp_id;

