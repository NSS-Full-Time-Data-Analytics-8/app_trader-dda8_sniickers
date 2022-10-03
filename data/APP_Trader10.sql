

--(A) App Trader will purchase apps for 10,000 times the price of the app,
--however the minimum price to purchase an app is $25,000. 
--For example, a $3 app would cost $30,000 (10,000 x the price)
--and a free app would cost $25,000 (The minimum price).
--NO APP WILL EVER COST LESS THEN $25,000 TO PURCHASE.  

--b. Apps earn $5000 per month on average from in-app advertising and 
--in-app purchases _regardless_ of the price of the app.  

--c. App Trader will spend an average of $1000 per month to market an app _regardless_ of
--the price of the app. If App Trader owns rights to the app in both stores,
--it can market the app for both stores for a single cost of $1000 per month.  

SELECT *
FROM app_store_apps

SELECT *
FROM play_store_apps


--d. For every quarter-point that an app gains in rating, its projected lifespan increases
--by 6 months, in other words, an app with a rating of 0 can be expected to be in use for 1 year,
--an app with a rating of 1.0 can be expected to last 3 years, and an app with a rating of 4.0 can
--be expected to last 9 years. Ratings should be rounded to the nearest 0.25 to evaluate an app's 
--likely longevity.  
(D)
SELECT Rating,name,Round(rating)
FROM app_store_apps
WHERE rating>=3.5
LIMIT 10



--e. App Trader would prefer to work with apps that are available in both the App Store and
--the Play Store since they can market both for the same $1000 per month.

(E)
SELECT *
FROM play_store_apps
INNER JOIN app_store_apps
ON app_store_apps."name" = play_store_apps."name"
LIMIT 20
mmmm



SELECT name, price,review_count,rating,content_rating
FROM play_store_apps


SELECT*
FROM app_store_apps
(B)
SELECT *
FROM app_store_apps
WHERE rating >4 AND price='0'
ORDER BY name DESC

(A)
SELECT DISTINCT rating,type,install_count,name
FROM play_store_apps
WHERE rating IS NOT NULL and rating >4.4 AND type= 'Free'
order by install_count asc
limit 3;

(b)
SELECT name, rating, review_count, content_rating,type, price, genres
FROM play_store_apps
WHERE rating > 4 AND type='Free'
ORDER by content_rating DESC
LIMIT 5


SELECT name_text,
FROM app_store_apps INNER JOIN 
ON winter_sports.athlete_id = athletes.id

SELECT *													
FROM app_store_apps

SELECT *
FROM app_store_apps








