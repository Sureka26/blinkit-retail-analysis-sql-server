USE blinkit_grocery_analysis;

CREATE VIEW vw_business_summary AS
SELECT
    Outlet_Type,
    ROUND(SUM(Total_Sales), 2) AS Revenue,
    ROUND(AVG(Rating), 2)      AS Avg_Rating,
    COUNT(*)                   AS Total_Items
FROM blinkit_data
GROUP BY Outlet_Type;

SELECT * FROM vw_business_summary;

CREATE PROCEDURE GetOutletSales
    @outlet_name VARCHAR(100)
AS
BEGIN
    SELECT
        Outlet_Type,
        ROUND(SUM(Total_Sales), 2) AS Revenue
    FROM blinkit_data
    WHERE Outlet_Type = @outlet_name
    GROUP BY Outlet_Type;
END;

EXEC GetOutletSales 'Supermarket Type1';
