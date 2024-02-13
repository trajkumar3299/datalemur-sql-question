-- Below code helps analyze the distribution of users based on the number of tweets they made in the year 2022. The CTE calculates the count of tweets per user, and the main query groups users by the count of tweets, providing a summary of the tweet distribution across users.

-- Solution-1
with cte AS(
SELECT 
user_id,COUNT(tweet_id) 
FROM tweets where  EXTRACT(year from tweet_date) = '2022'
GROUP BY 1)

select count as tweet_bucket, COUNT(user_id) from cte 
GROUP BY 1

-- Solution-2

with a as (SELECT user_id,tweet_id, EXTRACT(year FROM tweet_date) as yea FROM tweets ),
b AS (
select user_id, COUNT(tweet_id) as tweet_bucket from a where yea = '2022' 
GROUP BY user_id)

SELECT tweet_bucket, COUNT(user_id) as users_num from b
group by tweet_bucket
