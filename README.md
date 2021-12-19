# Amazon_Vine_Analysis

## Overview of the analysis of the Vine program:
______________________________________________________

Our work with Jennifer for SellBy was so succesful that we have been asked to partner on a bigger project. Our new task will envolve analyzing Amazon reviews written by members of the paid Amazon Vine program. Many of Amazon's shoppers depend on product reviews to make a purchase. Amazon makes these datasets publicly available. The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members who are then required to publish a review. These datasets can be massive and its alot of data to be stored on a single local computer.

In my analysis I will leverage Google Colab notebooks to perform the ETL process. I will run PySpark ETL commands and load a (video game dataset) from the Amazon reviews into an AWS RDS PostgreSQL. Once in PostgreSQL I will  perform a statistical analysis on the data. My analysis is to determine if there is any bias toward favorable reviews from Vine members to be uncovered through my review. For this project we have been given approximately 50 datasets to analyze of which I selected [Video_Games_v1_00](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt). After my review I will provide a summary of the analysis for Jennifer to submit to the SellBy stakeholders.

  

## Results: Using bulleted lists and images of DataFrames as support, address the following questions:
______________________________________________________________________________________

* How many Vine reviews and non-Vine reviews were there?

#### Vine Reviews = 4291
#### Non-Vine Reviews = 1,781,706


<img width="550" alt="Total_Number_Reviews" src="https://user-images.githubusercontent.com/88467263/146683410-74b70fdc-56ad-4070-80b5-31cbaa3b819e.PNG">


* How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?

#### 5 Star Vine Reviews = 1607
#### Non-Vine 5 Star Reviews = 1,025,317


<img width="550" alt="Number_of_five_star" src="https://user-images.githubusercontent.com/88467263/146683427-470374ab-17de-4b61-9b19-45b675b50fac.PNG">


* What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?


#### Percentage 5 Star Vine Reviews = 37.5 %
#### Percentage Non-Vine 5 Star Reviews = 58%


<img width="650" alt="Percentage_fivestar review" src="https://user-images.githubusercontent.com/88467263/146683434-1f1ac489-99e1-449c-97c3-de4d4b0ebe85.PNG">

## Average Rating Vine vs Non - Vine Members
__________________________________________

<img width="700" alt="Avg_Rating" src="https://user-images.githubusercontent.com/88467263/146686165-06a29cb7-550b-48fa-abc0-cd832e9063b7.PNG">



## Summary: 
____________________________


In my analysis I can see that the difference between the number of Vine member reviews vs Non-Vine members review  is 1,777,415. Overall it seems like there were more reviews for each star rating that exists among Non-Vine members. Its seems that Non-Vine members are more likely to rate with 5 stars than Vine members which starts to show a bias. Among the Non-Vine members they are 58% more likely to give a 5 star rating. Vine members show a 37.5%  rating for giving 5 stars. Overall it seems that there is a more favorable outcome to recieve a 5 star rating from Non-Vine members, there is  63% chance of recieving a rating between 1-4 with Vine members. For Non-Vine members there is a 58% chance to get a 5 star rating which is better than the 42% chance to get a 1-4 star rating. With the data provided it still seems that there is no true evidence to support that there is a bias among Vine members and their ratings. Additionally I looked at the average rating and for Non Vine members vs Vine members shown in the capture above our summary. Non-Vine members gave a average star rating of 4.06 while Vine members gave a average rating of 4.07. Then, provide one additional analysis that you could do with the dataset to support your statement.
