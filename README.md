# Amazon_Vine_Analysis

## Overview of the analysis of the Vine program:

Our work with Jennifer for SellBy was so succesful that we have been asked to partner on a bigger project. Our new task will envolve analyzing Amazon reviews written by members of the paid Amazon Vine program. Many of Amazon's shoppers depend on product reviews to make a purchase. Amazon makes these datasets publicly available. The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members who are then required to publish a review. These datasets can be massive and its alot of data to be stored on a single local computer.

In my analysis I will leverage Google Colab notebooks to perform the ETL process completely in the cloud. I will run PySpark ETL commands and load a (video game dataset) from the Amazon reviews into an AWS RDS PostgreSQL. Once in PostgreSQL SQL I will  perform a statistical analysis on the data. My analysis is to determine if the reviews are valid or if there is any bias toward favorable reviews from Vine members to be uncovered through my review. For this project we have been given approximately 50 datasets to analyze. After my review I will provide a summary of the analysis for Jennifer to submit to the SellBy stakeholders.

  

## Results: Using bulleted lists and images of DataFrames as support, address the following questions:

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




Summary: In your summary, state if there is any positivity bias for reviews in the Vine program. Use the results of your analysis to support your statement. Then, provide one additional analysis that you could do with the dataset to support your statement.
