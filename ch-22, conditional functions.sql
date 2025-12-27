-- conditional function in sql
-- 1.case -- returns value based on conditon
-- 2.coalesce()  -- returns the first non-null value.


--we will be using the same product table
SELECT * FROM products;
-- we will be categorizing product into price ranges
-- AFFORDABLE(less than 10000)
-- MODERATE(betn 10000 to 49999)
-- EXPENSIVE(>=50000)


use of case:

SELECT product_name,price,
CASE
    WHEN price < 10000 THEN 'affordable'
	WHEN price >10000 AND price <= 49999 THEN 'Moderate'
	ELSE 'Expensive'
	END AS price_category
FROM products;


--assignment is to calssify products according to the quantity available.
1.in stock(more than 10)
2.limited stock(between 5 and 9)
3.out of stock(less than 5)

SELECT product_name,quantity,
CASE 
WHEN quantity >= 10 THEN 'IN STOCK'
WHEN quantity >= 5 AND quantity >= 9 THEN 'LIMITED STOCK'
ELSE 'SORRY, OUT OF STOCK'
END AS Product_details
FROM products;


