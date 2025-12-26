-- more about operators
--Between,like and in operator.
select * from employee4;

-- 1.retrive emp whose sal is betn 40000 and 60000.
select first_name,salary from employee4
where salary between 40000 AND 60000;


--2. use of like operator.
select first_name,email from employee4
where email LIKE '%@yahoo.com';

select first_name from employee4
where first_name LIKE 'a%'; --shows the first name starting with "a".

select first_name from employee4
where first_name LIKE '%a';  --shows the first name ending with "a".
--3. use of in operator.
select * from employee4
where department IN('IT','HR');
