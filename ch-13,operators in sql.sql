-- logical operators
-- AND-if both the conditions are true.
-- OR-if one of the condition is true.
-- NOT- neglects the condition.

select * from employee4;

--use of AND operator
select * from employee4
WHERE age >= 40 AND salary > 50000;

-- use of OR operator
select first_name from employee4
WHERE department = 'HR' OR department = 'IT';


-- use of NOT operator
select * from employee4
WHERE NOT (department = 'HR');