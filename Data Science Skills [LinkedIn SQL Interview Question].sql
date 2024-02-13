-- Below SQL code retrieves unique "candidate_id" values from a table named "candidates" where the associated "skill" is among 'Python', 'Tableau', and 'PostgreSQL'. It then groups the results by candidate ID, filters for candidates with all three specified skills, and finally orders the output by candidate ID in ascending order.

SELECT candidate_id FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id
