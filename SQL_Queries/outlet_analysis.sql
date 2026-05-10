USE blinkit_grocery_analysis;

SELECT
    Outlet_Type,
    ROUND(SUM(Total_Sales), 2) AS Revenue
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Revenue DESC;

WITH outlet_revenue AS (
    SELECT
        Outlet_Type,
        SUM(Total_Sales) AS Revenue
    FROM blinkit_data
    GROUP BY Outlet_Type
)
SELECT
    Outlet_Type,
    ROUND(Revenue, 2)                                    AS Revenue,
    ROUND(Revenue * 100.0 / SUM(Revenue) OVER(), 2)     AS Revenue_Percentage
FROM outlet_revenue
ORDER BY Revenue DESC;

WITH outlet_size_revenue AS (
    SELECT
        Outlet_Size,
        SUM(Total_Sales) AS Revenue
    FROM blinkit_data
    GROUP BY Outlet_Size
)
SELECT
    Outlet_Size,
    ROUND(Revenue, 2)                                    AS Revenue,
    ROUND(Revenue * 100.0 / SUM(Revenue) OVER(), 2)     AS Revenue_Contribution
FROM outlet_size_revenue
ORDER BY Revenue DESC;

SELECT
    Outlet_Location_Type,
    ROUND(SUM(Total_Sales), 2) AS Revenue,
    DENSE_RANK() OVER (
        ORDER BY SUM(Total_Sales) DESC
    ) AS Tier_Rank
FROM blinkit_data
GROUP BY Outlet_Location_Type;

SELECT
    Outlet_Establishment_Year,
    COUNT(DISTINCT Outlet_Identifier) AS Total_Outlets,
    ROUND(SUM(Total_Sales), 2)        AS Revenue
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

SELECT
    Outlet_Type,
    ROUND(SUM(Total_Sales), 2)                              AS Revenue,
    COUNT(*)                                                AS Products_Sold,
    ROUND(SUM(Total_Sales) * 1.0 / COUNT(*), 2)            AS Revenue_Per_Product
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Revenue_Per_Product DESC;

WITH outlet_sales AS (
    SELECT
        Outlet_Identifier,
        ROUND(SUM(Total_Sales), 2) AS Revenue
    FROM blinkit_data
    GROUP BY Outlet_Identifier
)
SELECT *
FROM outlet_sales
ORDER BY Revenue DESC;

SELECT
    Outlet_Location_Type,
    Outlet_Type,
    ROUND(SUM(Total_Sales), 2) AS Revenue,
    ROUND(AVG(Rating), 2)      AS Avg_Rating
FROM blinkit_data
GROUP BY Outlet_Location_Type, Outlet_Type
ORDER BY Revenue DESC;
