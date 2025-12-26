-- set operator in sql(UNION, UNION ALL,INTERSECT,EXCEPT)
DROP TABLE IF EXISTS students_2025;
CREATE TABLE students_2025(
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
course VARCHAR(50)
);


INSERT INTO students_2025(student_id,student_name,course) VALUES
(1, 'Rohan Dangal', 'Computer Science'),
(2, 'Anisha Sharma', 'Data Analytics'),
(3, 'Suman Adhikari', 'Information Technology'),
(4, 'Prakash Karki', 'Software Engineering'),
(5, 'Nisha Poudel', 'Cyber Security'),
(6, 'Amit Shrestha', 'Artificial Intelligence');


DROP TABLE IF EXISTS students_2026;
CREATE TABLE students_2026(
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
course VARCHAR(50)
);

INSERT INTO students_2026(student_id,student_name,course) VALUES
(1, 'Rohan Dangal', 'Computer Science'),
(2, 'Anisha Sharma', 'Data Analytics'),
(106, 'Anisha Shrestha', 'Data Analytics'),
(107, 'Ramesh Karki', 'Information Technology'),
(108, 'Suman Adhikari', 'Computer Science');


SELECT * FROM students_2025;
SELECT * FROM students_2026;


--1.UNION
-- Combines results,removes duplicates
SELECT student_id, student_name, course, '2025' AS batch_year
FROM students_2025
UNION
SELECT student_id, student_name, course, '2026' AS batch_year
FROM students_2026
ORDER BY batch_year, student_id;

--2.UNION ALL
-- combines results and also keeps duplicates.
SELECT student_id, student_name, course, '2025' AS batch_year
FROM students_2025
UNION ALL
SELECT student_id, student_name, course, '2026' AS batch_year
FROM students_2026
ORDER BY batch_year, student_id;


--3.INTERSECT
-- returns common result
SELECT student_id, student_name, course
FROM students_2025
INTERSECT
SELECT student_id, student_name, course
FROM students_2026;

--4.except
SELECT student_id, student_name, course
FROM students_2025
EXCEPT
SELECT student_id, student_name, course
FROM students_2026
ORDER BY Student_id;


