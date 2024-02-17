-- Solution
WITH cte AS (
SELECT employee_id,SUM(deal_size) as total_sales
FROM deals
GROUP BY 1
)
SELECT cte.employee_id,
CASE WHEN total_sales > quota THEN 'yes' ELSE 'no' END AS made_quota
from cte 
JOIN sales_quotas ON
cte.employee_id = sales_quotas.employee_id
ORDER BY cte.employee_id
