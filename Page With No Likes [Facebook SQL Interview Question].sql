-- Below code return the IDs of the Facebook pages that have zero likes.
SELECT pages.page_id FROM pages 
left JOIN page_likes on pages.page_id = page_likes.page_id
where page_likes.liked_date is NULL
order by pages.page_id
