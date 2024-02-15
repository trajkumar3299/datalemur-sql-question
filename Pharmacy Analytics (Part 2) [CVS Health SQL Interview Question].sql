-- Solution

SELECT manufacturer,COUNT(drug),
SUM(cogs-total_sales) as total_profit
FROM pharmacy_sales
where cogs>total_sales
GROUP BY manufacturer
order by 3 DESC
