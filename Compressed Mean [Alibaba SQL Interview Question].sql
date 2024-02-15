-- Solution

SELECT 
ROUND(CAST(SUM(order_occurrences*item_count) as decimal) /
SUM(order_occurrences),1) as mean
FROM items_per_order
