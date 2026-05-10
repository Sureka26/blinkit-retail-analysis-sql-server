USE blinkit_grocery_analysis;

SELECT
    Item_Type,
    ROUND(AVG(Total_Sales), 2) AS Avg_Revenue
FROM blinkit_data
GROUP BY Item_Type
HAVING AVG(Total_Sales) > (
    SELECT AVG(Total_Sales)
    FROM blinkit_data
)
ORDER BY Avg_Revenue DESC;

SELECT
    Outlet_Identifier,
    ROUND(SUM(Total_Sales), 2) AS Revenue
FROM blinkit_data
GROUP BY Outlet_Identifier
HAVING SUM(Total_Sales) > (
    SELECT AVG(outlet_total)
    FROM (
        SELECT
            Outlet_Identifier,
            SUM(Total_Sales) AS outlet_total
        FROM blinkit_data
        GROUP BY Outlet_Identifier
    ) AS outlet_summary
)
ORDER BY Revenue DESC;


SELECT
    Outlet_Type,
    Item_Type,
    Revenue
FROM (
    SELECT
        Outlet_Type,
        Item_Type,
        ROUND(SUM(Total_Sales), 2) AS Revenue,
        RANK() OVER (
            PARTITION BY Outlet_Type
            ORDER BY SUM(Total_Sales) DESC
        ) AS rn
    FROM blinkit_data
    GROUP BY Outlet_Type, Item_Type
) AS ranked_items
WHERE rn = 1
ORDER BY Revenue DESC;