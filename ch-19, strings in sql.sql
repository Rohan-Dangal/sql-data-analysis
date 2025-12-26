--strings in sql.
-- UPPER()
-- LOWER()
-- LENGTH()- RETURNS THE LENGTH OF THE STRING
-- CONCAT()- duita or tyo vanda dherai string lai jodcha
-- SUBSTRING() - Extracts some portion of the string.
-- TRIM()-REMOVE LEADING/TRAILING SPACES
-- REPLACE()

here we are going to use the same datas from chapter-18.
SELECT * FROM products;
--use of upper case
SELECT UPPER(product_name) AS capital_product
FROM products;

--use of lower case
SELECT LOWER(product_name) AS capital_product
FROM products;

--USE OF CONCAT 
join category and product name with hypen.
SELECT CONCAT(category,'-',product_name) AS product_details
FROM products;

--use of substring to extract the first 5 words from product name.
SELECT SUBSTRING(product_name,1,5) AS short_name
FROM products;

--use of length 
SELECT product_name,LENGTH(product_name) AS Length_of_char
FROM products;

--USE OF TRIM
SELECT TRIM('   monitor  ')AS trimmed_word;

--use of replace(replacing "phone" with device)
SELECT product_name,REPLACE(product_name,'phones','devices')AS replaced_word
FROM products;

--use of left and right.
SELECT left(product_name,3) AS left_3_words
FROM products;

SELECT right(product_name,3) AS left_3_words
FROM products;