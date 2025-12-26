--other operators in sql.

-- 1. ISNULL operator.
-- 2. ORDER BY operator.
-- 3. LIMIT operator and
-- 4. DISTINCT

--1. find employee whose email column is null.(if applicable)
select * from employee4
where email IS NULL;

--2.use of order by operator.
select * from employee4
order by salary ASC;

--3 retrive the top 5 highest paid employees(use of limit operator).

select first_name,salary from employee4
order by salary desc
LIMIT 5;


--4(use of distinct), retrive the unique department from the table.
SELECT DISTINCT department from employee4;


-- (we can use count too in distinct)
SELECT COUNT (DISTINCT department)
from employee4;

