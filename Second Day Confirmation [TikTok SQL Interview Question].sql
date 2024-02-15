-- Solution

SELECT 
user_id 
FROM emails e  
JOIN texts t on e.email_id = t.email_id
GROUP BY 1
HAVING COUNT(signup_action) = 2

