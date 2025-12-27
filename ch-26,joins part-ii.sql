--use of join in sql(part-ii)

--4.full outer join:(retrives record from both table either it matches or not)
SELECT * FROM employee6;
SELECT * FROM department;

SELECT e.emp_id,e.last_name,e.dep_id,
       d.dep_id, d.dep_name
FROM employee6 e
FULL OUTER JOIN department d
ON e.dep_id = d.dep_id
ORDER BY emp_id;

--5. cross join(Retrives all the possible combination of employee6 and department)
SELECT e.emp_id,e.last_name,e.dep_id,
       d.dep_id, d.dep_name
FROM employee6 e
CROSS JOIN department d; 

--6. self join
--(find emp6 who shares the same department)

SELECT e1.last_name AS emp1_name,
       e2.last_name AS emp2_name,
	   d.dep_name
FROM employee6 e1 JOIN employee6 e2
ON e1.dep_id = e2.dep_id AND e1.emp_id != e2.emp_id
JOIN
department d
ON e1.dep_id = d.dep_id;

