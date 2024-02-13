-- Below query will calculates the total viewership for laptops and mobile devices where mobile is defined as the sum of tablet and phone viewership. Output the total viewership for laptops as laptop_reviews and the total viewership for mobile devices as mobile_views.

SELECT 
SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) as laptop_views,
SUM(CASE WHEN device_type IN ('tablet','phone') THEN 1 ELSE 0 END) as mobile_views
FROM viewership
