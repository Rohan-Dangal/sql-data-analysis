CREATE TABLE employee4 (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary VARCHAR(50),
    joining_date DATE,
    age INT
);

COPY employee4(employee_id, first_name, last_name, department, salary, joining_date, age)
FROM 'C:\Users\John Dangal\OneDrive\Desktop\Learn Excel\practice sheet for sql.csv'
DELIMITER ',' 
CSV HEADER;
-- that path is taken
-- i have tried directly importiong too but that didnt worked either

employee_id	int	primary
first_name	varchar(50)	not null
last_name	varchar(50)	
email	varchar(50)	
department	varchar(50)	
salary		
joining_date		
age		
select * from employee4;


