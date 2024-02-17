-- 
WITH CTE AS (
SELECT age_bucket,
sum(CASE WHEN activity_type = 'send' THEN time_spent END) as send_perc,
sum(CASE WHEN activity_type = 'open' THEN time_spent END) as open_perc,
SUM(time_spent) AS spe
FROM activities a join age_breakdown ab ON 
a.user_id = ab.user_id
where activity_type in ('send','open')
group by 1)

SELECT age_bucket,
ROUND((send_perc / spe)*100.0,2) as send_percc, 
ROUND((open_perc / spe)*100.0,2) as open_percc
FROM CTE 
