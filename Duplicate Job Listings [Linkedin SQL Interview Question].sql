-- Solution
with cte as 
(select company_id from job_listings
GROUP BY company_id
having COUNT(title) >1)
select COUNT(company_id) from cte 
