SELECT DISTINCT rating,type,install_count,name
FROM play_store_apps
where rating is not NULL and rating >4.4 AND type= 'Free'  
order by install_count asc
limit 3;
--

select *
from app_store_apps
where name ILIKE '%halloween%'