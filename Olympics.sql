create database olympics_db;
use olympics_db;
select * from olympics; -- A. Retrieve all records from the Olympics table.
SELECT name, medal FROM olympics; -- B. Retrieve only the Athlete names and the Medals they won
SELECT COUNT(DISTINCT name) AS total_athletes FROM olympics;-- C. Count the total number of athletes in the dataset.
SELECT * FROM olympics WHERE Medal = 'Gold';-- D. Find all records of athletes who won a Gold medal
SELECT name FROM olympics WHERE medal = 'Silver' ORDER BY Year;-- E. List all athletes who won Silver, ordered by the Year they won it.
SELECT team, 
       SUM(CASE WHEN Medal = 'Gold' THEN 1 ELSE 0 END) AS Gold,
       SUM(CASE WHEN Medal = 'Silver' THEN 1 ELSE 0 END) AS Silver,
       SUM(CASE WHEN Medal = 'Bronze' THEN 1 ELSE 0 END) AS Bronze
FROM Olympics
GROUP BY team;-- F. Count how many Gold, Silver, and Bronze medals each country has won.
SELECT team, 
       SUM(CASE WHEN Medal = 'Gold' THEN 1 ELSE 0 END) AS Gold
FROM Olympics
GROUP BY team
HAVING Gold > 50;-- G. Identify countries that have won more than 50 Gold medals.
SELECT name, COUNT(*) AS Total_Medals
FROM Olympics
GROUP BY name
ORDER BY Total_Medals DESC
LIMIT 1;-- I. Find the athlete who has won the most medals

SELECT DISTINCT Event FROM Olympics WHERE Event LIKE '%Freestyle%';-- J. List all events that include the term 'Freestyle' in their name

SELECT name,sport, COUNT(*) AS Total_Medals
FROM Olympics
GROUP BY sport,name
ORDER BY sport,Total_Medals DESC
LIMIT 3;-- K. Find the top 3 athletes by the total number of medals won in each sport.








