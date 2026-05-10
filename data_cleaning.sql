USE blinkit_grocery_analysis;

SELECT *
FROM blinkit_data;

SELECT DISTINCT Item_Fat_Content
FROM blinkit_data;

UPDATE blinkit_data
SET Item_Fat_Content =
    CASE
        WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
        WHEN Item_Fat_Content = 'reg'              THEN 'Regular'
        ELSE Item_Fat_Content
    END;

    SELECT DISTINCT Item_Fat_Content
    FROM blinkit_data;

    SELECT
         SUM(CASE WHEN Item_Weight IS NULL THEN 1 ELSE 0 END) AS Null_Item_Weight,
         SUM(CASE WHEN Outlet_Size IS NULL THEN 1 ELSE 0 END) AS Null_Outlet_Size,
         SUM(CASE WHEN Rating      IS NULL THEN 1 ELSE 0 END) AS Null_Rating
    FROM blinkit_data;

    UPDATE blinkit_data
    SET Outlet_Size = 'Unknown'
    WHERE Outlet_Size IS NULL;