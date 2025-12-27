--date and time function in sql(part-ii)
--6.DATE_PART()--Extracts some part of the date
SELECT product_name,added_date,
DATE_PART('dow',added_date) AS day_of_week
FROM products;

--apart from dow we can use year,quarter,month,week,day,second,timezone..and many more

--7.date_trunc()--truncate date to precision.
--truncate added_date to the start of the month.

SELECT product_name,added_date,
DATE_TRUNC('week', added_date)AS month_start
FROM products;

--8.interval()--add/sub time interval
--add 6 months to the added_date.
SELECT added_date,
added_date + INTERVAL '6 MONTHS' AS added_date
FROM products;

--9.currenttime()
SELECT CURRENT_TIME AS time_now;

--10.TODATE() -- CONVERT STRING INTO DATE
SELECT TO_DATE('22-12-2022','DD-MM-YYYY')AS converted_date;
