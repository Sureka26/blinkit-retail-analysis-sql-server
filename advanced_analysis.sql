USE blinkit_grocery_analysis;

WITH yearly_sales AS (
    SELECT
        Outlet_Establishment_Year,
        SUM(Total_Sales) AS Revenue
    FROM blinkit_data
    GROUP BY Outlet_Establishment_Year
)
SELECT
    Outlet_Establishment_Year,
    ROUND(Revenue, 2)                                              AS Revenue,
    ROUND(SUM(Revenue) OVER (ORDER BY Outlet_Establishment_Year), 2) AS Running_Revenue
FROM yearly_sales;

WITH category_sales AS (
    SELECT
        Item_Type,
        ROUND(SUM(Total_Sales), 2) AS Revenue
    FROM blinkit_data
    GROUP BY Item_Type
)
SELECT
    Item_Type,
    Revenue,
    CASE
        WHEN Revenue > 150000                    THEN 'High Performing'
        WHEN Revenue BETWEEN 80000 AND 150000    THEN 'Medium Performing'
        ELSE                                          'Low Performing'
    END AS Performance_Category
FROM category_sales
ORDER BY Revenue DESC;

WITH category_rank AS (
    SELECT
        Outlet_Location_Type,
        Item_Type,
        ROUND(SUM(Total_Sales), 2) AS Revenue,
        RANK() OVER (
            PARTITION BY Outlet_Location_Type
            ORDER BY SUM(Total_Sales) DESC
        ) AS rn
    FROM blinkit_data
    GROUP BY Outlet_Location_Type, Item_Type
)
SELECT *
FROM category_rank
WHERE rn = 1;

SELECT
    Item_Type,
    ROUND(SUM(Total_Sales), 2) AS Revenue,
    RANK() OVER (
        ORDER BY SUM(Total_Sales) DESC
    ) AS Revenue_Rank
FROM blinkit_data
GROUP BY Item_Type;