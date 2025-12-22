CREATE TABLE users(
user_id INT PRIMARY KEY,
name varchar(50) NOT NULL,
email  VARCHAR(50) UNIQUE,
age INTEGER CHECK(age >= 18),
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users(user_id,name,email,age)
VALUES(1,'Rohan Singh','rohansingh09@gmail.com',19)

SELECT* FROM users;