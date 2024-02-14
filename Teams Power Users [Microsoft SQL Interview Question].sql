-- Below query is to identify the top 2 Power Users who sent the highest number of messages on Microsoft Teams in August 2022

WITH cte as(
SELECT sender_id, COUNT(message_id) as message_count
FROM messages
WHERE EXTRACT('month' from sent_date) = 8 and
EXTRACT('year' from sent_date) = 2022
GROUP BY 1)

select sender_id,message_count from cte 
ORDER BY message_count desc 
limit 2
