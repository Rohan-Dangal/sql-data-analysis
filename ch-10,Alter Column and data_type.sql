DROP TABLE IF EXISTS user

CREATE TABLE IF NOT EXISTS customers(
user_id INT PRIMARY KEY,
username VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
age INT,
city VARCHAR(50)
);

SELECT * FROM customers;
INSERT INTO customers (user_id, username, email, age, city)
VALUES
    (1, 'rohan_dangal', 'rohan.dangal@example.com', 28, 'Kathmandu'),
    (2, 'sarah_jones', 'sarah.jones@example.com', 35, 'Pokhara'),
    (3, 'michael_chen', 'michael.chen@example.com', 42, 'Biratnagar'),
    (4, 'emily_williams', 'emily.williams@example.com', 22, 'Lalitpur'),
    (5, 'david_brown', 'david.brown@example.com', 30, 'Butwal');

	UPDATE customers  --this is how we update datas of table
	SET age = 21
	WHERE username = 'rohan_dangal';

	SELECT * FROM customers ORDER BY user_id ASC;

	UPDATE customers
	SET city = 'Damak'
	WHERE user_id = 1;


	--to rename the username column to cutsomer_name
	ALTER TABLE customers
	RENAME COLUMN username TO customer_name;


	--to change the datatype BIGINT to SMALLINT;
	ALTER TABLE customers
	ALTER COLUMN age TYPE SMALLINT;

	--setting NOT NULL CONSTRIANT to the column "city"
	ALTER TABLE customers
	ALTER COLUMN city SET NOT NULL;


	--adding CHECK condition in the column "age"

	ALTER TABLE customers
	ADD CONSTRAINT age CHECK(age>=18);

INSERT INTO
	CUSTOMERS (USER_ID, CUSTOMER_NAME, EMAIL, AGE, CITY)
VALUES
	(
		6,
		'ederson_dangal',
		'ederson.dangal@example.com',
		16,
		'Kathmandu'
	);