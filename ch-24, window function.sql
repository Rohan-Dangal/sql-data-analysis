--window function in sql
SELECT * FROM products
order by product_id;

 window function calculate something by looking at the nearby rows without actually grouping them.
 they are used for ranking,calculating running totals,percentages and many more things.
-- ROW_NUMBER(), RANK(), DENSE_RANK()

golden formula
FUNCTION() OVER (
    PARTITION BY ...
    ORDER BY ...
)
 -- aggregate vs window

 --assign a unique row number to each product with same category.
 SELECT product_name,category,price,
       ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC)AS row_num
 FROM products;

 SELECT product_name,category,price,
       RANK() OVER(PARTITION BY category ORDER BY price DESC)AS ranked
 FROM products;

  SELECT product_name,category,price,
       DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC)AS dense_rankk
 FROM products;

--Difference in rank and dense_rank is that dense_rank works accurately(i.e if there is two datas with same value 
-- it will rank both the same number (1,1) and the next value will be 2 but in rank the next value would be 3.)

  SELECT product_name,category,price,
       SUM(price) OVER(PARTITION BY category ORDER BY price ASC) AS Running_total
 FROM products;

 