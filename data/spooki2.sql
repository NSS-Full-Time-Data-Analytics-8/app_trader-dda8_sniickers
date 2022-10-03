SELECT DISTINCT app_store_apps.primary_genre,name,price,rating,review_count
FROM app_store_apps 
where price = '0' AND rating > 3 and review_count >= '4000000';

select *
from app_store_apps
where primary_genre = 'Games'and price = '0'
limit 20;

select *
from app_store_apps
where name ILIKE '%halloween%';

select distinct primary_genre
from app_store_apps
where primary_genre = '%Games%' and price = '0'
limit 20;

--
select name,app_store_apps.content_rating AS app_store,play_store_apps.content_rating AS play_store
from play_store_apps inner JOIN app_store_apps USING (name)
order by app_store_apps.content_rating desc
--

--
select name,app_store_apps.rating AS app_store,play_store_apps.rating AS play_store,app_store_apps.price AS app_store, play_store_apps.price AS play_store
from play_store_apps inner JOIN app_store_apps USING (name)
order BY app_store_apps.rating >4 AND play_store_apps.rating >4 desc

--
select name,app_store_apps.price AS app_store, play_store_apps.price AS play_store
from play_store_apps inner JOIN app_store_apps USING (name)
order BY app_store_apps.price ='0' AND play_store_apps.price = '0' desc