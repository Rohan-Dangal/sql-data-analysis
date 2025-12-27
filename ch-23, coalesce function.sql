--coalesce function in sql(used to handle null values).
ADDING discount_price column with some null values

ALTER TABLE products
ADD COLUMN discount_price NUMERIC(10,2);

SELECT * FROM products
ORDER BY product_id;

UPDATE products
SET discount_price = price * discount_rate / 100

UPDATE products
SET discount_price = NULL
WHERE product_name = 'Laptop';


-- now here the product laptop do not have discount but i want to handle the null
-- values to be shown in the same table as discount price

SELECT product_name,
       COALESCE(discount_price,price)
FROM products;


--lets drop discount_rate
ALTER TABLE products
DROP COLUMN discount_rate;

