-- BY Mahmoud Shimy & Selim Mekawy in DEPI

-- 1. What is the average price and total count of cars for each brand?
SELECT Brand, 
    AVG(Price) AS Average_Price, 
    COUNT(*) AS Total_Count 
FROM CarsDataset 
GROUP BY Brand 
ORDER BY Average_Price DESC;

---------------------------------------------------------------------------------------------------

-- 2. How is the price distributed (Avg, Max, Min) across each Governorate?
SELECT Governorate, 
    AVG(Price) AS Average_Price, 
    MAX(Price) AS Max_Price, 
    MIN(Price) AS Min_Price 
FROM CarsDataset 
GROUP BY Governorate 
ORDER BY Average_Price DESC;

---------------------------------------------------------------------------------------------------

-- 3. What are the top 5 most common and popular car models in the market?
SELECT TOP 5 Model, 
    COUNT(*) AS Model_Count 
FROM CarsDataset 
GROUP BY Model 
ORDER BY Model_Count DESC;

---------------------------------------------------------------------------------------------------

-- 4. What is the ranking of Body Types based on their average price?
SELECT Body,
    AVG(Price) AS Avg_Price
FROM CarsDataset 
GROUP BY Body
ORDER BY AVG(Price) DESC


---------------------------------------------------------------------------------------------------

-- 5. What is the average number of kilometers driven for each brand?
SELECT Brand, 
    AVG(Kilometers) AS Avg_Kilometers 
FROM CarsDataset 
GROUP BY Brand 
ORDER BY Avg_Kilometers DESC;

---------------------------------------------------------------------------------------------------

-- 6. What is the percentage of each transmission type within each car brand?
SELECT Brand, 
    Transmission, 
    COUNT(*) AS Count
FROM CarsDataset 
GROUP BY Brand, Transmission 
ORDER BY Brand;

---------------------------------------------------------------------------------------------------

-- 7. number of car's model for each goverorate
select Governorate, Model,count(*) as 'No. of cars'
from CarsDataset
Group by Governorate, Model
order by 'No. of cars' desc;
---------------------------------------------------------------------------------------------------

-- 8. What is the average price for each price range?
select Price_Range, AVG(Price) as AVG_Price
from CarsDataset
group by Price_Range

---------------------------------------------------------------------------------------------------
-- 9. How is the Transmission Distributed over price ranges
select Price_Range, Transmission, COUNT(Price_Range) as 'No. of Cars'
from CarsDataset
group by Transmission, Price_Range
order by Price_Range, 'No. of Cars' desc
---------------------------------------------------------------------------------------------------

-- 10. How does the average Engine CC change over the years?
SELECT Year, 
    AVG(Engine_CC) AS Avg_Engine_CC 
FROM CarsDataset 
GROUP BY Year 
ORDER BY Year DESC;