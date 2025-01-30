WITH cte AS (SELECT user_id,
COUNT(*) AS num
FROM tweets
WHERE EXTRACT(YEAR FROM tweet_date) = '2022'
GROUP BY user_id)

SELECT num AS tweet_bucket,
       COUNT(num) AS users_num
FROM cte
GROUP BY tweet_bucket;
