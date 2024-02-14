-- Below code retrieve the top three cities that have the highest number of completed trade orders listed in descending order.

with cte as (
SELECT city,COUNT(order_id) as total_orders
FROM trades 
join users on trades.user_id = users.user_id
where status = 'Completed'
GROUP BY 1)
SELECT * from cte 
ORDER BY total_orders DESC
limit 3
