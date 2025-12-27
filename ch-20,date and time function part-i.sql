--date and time function in sql.(part-1)(altogether there is 10 function)
-- now()
-- current date()
-- current time()
-- date_part()- extracts some part of date.
-- age()
-- extract()
SELECT * FROM products;

-- 1.use of now
SELECT NOW() AS current_date_time;

-- 2.use of current date
SELECT CURRENT_DATE AS todays_date;

SELECT added_date,CURRENT_DATE,CURRENT_DATE- added_date AS count_days
FROM products;


--3 extract part of date.
SELECT product_name, EXTRACT(YEAR FROM added_date) AS extracted_year
FROM products;
SELECT product_name, EXTRACT(MONTH FROM added_date) AS extracted_month
FROM products;
SELECT product_name, EXTRACT(DAY FROM added_date) AS extracted_day
FROM products;

--4.CALCULATE AGE BETN THE TWO DATES
SELECT product_name,AGE(CURRENT_DATE, added_date) AS count_days
FROM products;

SELECT category,AGE(CURRENT_DATE, added_date) AS count_days
FROM products;

--5. TO_CHAR() cahnge the added_date in custom format (DD-MM-YYYY)

SELECT category,
TO_CHAR(added_date, 'DD-MON-YYYY') AS Formatted_date
FROM products;

