-- selecting the database
use spotify_app_reviews;

-- importing dataset to Mysql Workbench
SELECT * FROM spotify_app_reviews.reviews;

-- Reviews with a rating of 5
SELECT * FROM reviews WHERE Rating = 5;

-- Count the number of reviews per rating
SELECT Rating, COUNT(*) as number_of_ratings FROM reviews GROUP BY Rating;

-- Find the Most Liked Review
SELECT * FROM reviews ORDER BY Total_thumbsup DESC LIMIT 1;

-- Reviews with more than 2 thumbs-up.
SELECT * FROM reviews WHERE Total_thumbsup > 2;

-- Reviews with Replies
SELECT * FROM reviews WHERE Reply IS NOT NULL;

-- Latest reviews first.
SELECT * FROM reviews ORDER BY Time_submitted DESC;

-- Reviews mentioning "buggy"
SELECT * FROM reviews WHERE Review LIKE '%buggy%';

-- Average rating across all reviews.
SELECT AVG(Rating) FROM reviews;

-- filter Reviews Submitted Within a Specific Date Range:
SELECT * FROM reviews WHERE Time_submitted BETWEEN '2022-07-01' AND '2022-07-31';

-- Reviews Submitted During Specific Hours:
SELECT * FROM reviews 
WHERE EXTRACT(HOUR FROM Time_submitted) BETWEEN 14 AND 16;

-- Review with the maximum length 
SELECT * FROM reviews ORDER BY LENGTH(Review) DESC LIMIT 1;

-- Calculate the Average Thumbs-Up per Rating
SELECT Rating, AVG(Total_thumbsup) AS AvgThumbsUp 
FROM reviews 
GROUP BY Rating;

-- Reviews that mention "terrible" or "bad" (Negative words)
SELECT * FROM reviews 
WHERE Review LIKE '%terrible%' OR Review LIKE '%bad%';

-- Total Number of Thumbs-Up Across All Reviews
SELECT SUM(Total_thumbsup) AS TotalThumbsUp FROM reviews;

-- Reviews Submitted on a Specific Day:
SELECT * FROM reviews WHERE DATE(Time_submitted) = '2022-07-09';




