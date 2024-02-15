-- Soltuion

WITH cte as (
SELECT 
app_id,
SUM(CASE WHEN event_type = 'impression' then 1 ELSE 0 END) as impression,
SUM(CASE WHEN event_type = 'click' then 1 ELSE 0 END) as click
FROM events
WHERE EXTRACT('year' from timestamp) = 2022
GROUP BY 1)

SELECT app_id,ROUND((100.0 * click / impression),2) from cte 
