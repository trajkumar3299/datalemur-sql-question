-- Solution
with cte as (
SELECT card_name,
MAX(issued_amount) - MIN(issued_amount) as difference
FROM monthly_cards_issued
GROUP BY 1
)
SELECT * from cte 
ORDER BY 2 DESC
