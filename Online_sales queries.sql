select * from company.online_sales;
-- A
SELECT MONTH(order_date) AS order_month
FROM company.online_sales
LIMIT 10;
-- B
SELECT YEAR(order_date) AS order_year
FROM company.online_sales
LIMIT 10;
-- C
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month
FROM company.online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    order_year, order_month;
-- D
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue
FROM 
   company.online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    order_year, order_month;
-- E
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    COUNT(DISTINCT order_id) AS order_volume
FROM company.online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    order_year, order_month;
    -- F
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM company.online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    order_year, order_month
LIMIT 24;  --  limit to last 24 months



    








