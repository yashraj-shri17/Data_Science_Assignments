create database olympics_db;
use olympics_db;
select * from olympics; -- A. Retrieve all records from the Olympics table.
SELECT name, medal FROM olympics; -- B. Retrieve only the Athlete names and the Medals they won
SELECT COUNT(DISTINCT name) AS total_athletes FROM olympics;-- C. Count the total number of athletes in the dataset.
SELECT * FROM olympics WHERE Medal = 'Gold';-- D. Find all records of athletes who won a Gold medal
SELECT name FROM olympics WHERE medal = 'Silver' ORDER BY Year;-- E. List all athletes who won Silver, ordered by the Year they won it.





