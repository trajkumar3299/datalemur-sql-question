-- Solution

with cte as (
SELECT drug,
(SUM(total_sales) - SUM(cogs)) as profit_sales 
FROM pharmacy_sales
GROUP BY 1)
SELECT * from cte 
ORDER BY profit_sales DESC
limit 3
