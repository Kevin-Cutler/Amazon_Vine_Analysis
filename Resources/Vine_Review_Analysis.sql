-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

select * from vine_table


--Create Table where Total Votes Greater or Equal to 20

select * 
Into total_votes_twenty
from vine_table where total_votes >= 20


select * from total_votes_twenty

--Create Table where Helpful Votes Divided by Total_Votes Greater or Equal to 50%

select * 
INTO helpful_votestotal_votes
from total_votes_twenty WHERE nullif(CAST(helpful_votes AS FLOAT),0)/
nullif(CAST(total_votes AS FLOAT),0) >=0.5

select * from helpful_votestotal_votes

--Create Table where Vine == 'Y'

select * 
into vine_yes
from helpful_votestotal_votes where vine = 'Y'


select * from vine_yes

--Create Table where Vine == 'N'

select * 
into vine_no
from helpful_votestotal_votes where vine = 'N'

select * from vine_no


--Determine the total number of reviews

SELECT vine, COUNT(*) as total_count
FROM vine_table
GROUP BY vine;


--Determine the number of 5-star reviews 

SELECT vine, COUNT(star_rating)
FROM vine_table
WHERE star_rating IN 
	(SELECT star_rating 
	 FROM vine_table 
	 WHERE star_rating = 5)
GROUP BY vine;

--Determine the  percentage of 5-star reviews for the two types of review (paid vs unpaid).

WITH data AS 
 (SELECT star_rating, vine, COUNT(*) AS Count 
  FROM vine_table
  GROUP BY star_rating, vine
  )
SELECT star_rating, vine, Count, 
       ROUND(Count * 100/(SUM(Count) OVER (PARTITION BY vine)),2) AS "%"
FROM data
ORDER BY star_rating, vine;





