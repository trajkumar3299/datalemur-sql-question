-- Average Post Hiatus (Part 1) [Facebook SQL Interview Question]

with cte as 
(select  user_id,
date_part('day',MAX(post_date)- MIN(post_date)) as diff
from posts
where 
EXTRACT('year' from post_date) = 2021
GROUP BY user_id)
select * from cte 
where diff >2
