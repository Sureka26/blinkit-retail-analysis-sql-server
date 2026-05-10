USE blinkit_grocery_analysis;

SELECT
    Item_Type,
    ROUND(SUM(Total_Sales), 2) AS Total_Revenue
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Revenue DESC;

SELECT
    Item_Type,
    ROUND(SUM(Total_Sales), 2) AS Revenue,
    RANK() OVER (
        ORDER BY SUM(Total_Sales) DESC
    ) AS Revenue_Rank
FROM blinkit_data
GROUP BY Item_Type;

SELECT TOP 5
    Item_Type,
    ROUND(SUM(Total_Sales), 2) AS Revenue
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Revenue ASC;

SELECT
    Item_Type,
    COUNT(*)                   AS Product_Count,
    ROUND(AVG(Total_Sales), 2) AS Avg_Revenue,
    ROUND(AVG(Rating), 2)      AS Avg_Rating
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Avg_Revenue DESC;

SELECT
    Item_Fat_Content,
    ROUND(SUM(Total_Sales), 2) AS Revenue
FROM blinkit_data
GROUP BY Item_Fat_Content;

SELECT
    Item_Fat_Content,
    COUNT(*)                   AS Total_Items,
    ROUND(AVG(Rating), 2)      AS Avg_Rating,
    ROUND(AVG(Total_Sales), 2) AS Avg_Revenue
FROM blinkit_data
GROUP BY Item_Fat_Content;

SELECT
    Item_Type,
    ROUND(AVG(Rating), 2)      AS Avg_Rating,
    ROUND(SUM(Total_Sales), 2) AS Revenue
FROM blinkit_data
GROUP BY Item_Type
HAVING AVG(Rating) >= 4
   AND SUM(Total_Sales) < 60000
ORDER BY Avg_Rating DESC;

SELECT TOP 10
    Item_Identifier,
    Item_Type,
    ROUND(SUM(Total_Sales), 2) AS Revenue
FROM blinkit_data
GROUP BY Item_Identifier, Item_Type
ORDER BY Revenue DESC;

SELECT
    Item_Type,
    ROUND(SUM(Total_Sales), 2) AS Revenue,
    ROUND(AVG(Rating), 2)      AS Avg_Rating,
    CASE
        WHEN AVG(Rating) < 3.5 THEN 'Customer Risk'
        ELSE 'Stable'
    END AS Risk_Status
FROM blinkit_data
GROUP BY Item_Type;