USE blinkit_grocery_analysis;

SELECT
    CASE
        WHEN Item_Visibility < 0.05              THEN 'Low Visibility'
        WHEN Item_Visibility BETWEEN 0.05 AND 0.15 THEN 'Medium Visibility'
        ELSE                                          'High Visibility'
    END AS Visibility_Category,
    ROUND(SUM(Total_Sales), 2) AS Revenue
FROM blinkit_data
GROUP BY
    CASE
        WHEN Item_Visibility < 0.05              THEN 'Low Visibility'
        WHEN Item_Visibility BETWEEN 0.05 AND 0.15 THEN 'Medium Visibility'
        ELSE                                          'High Visibility'
    END;

    SELECT
    CASE
        WHEN Item_Visibility < 0.05              THEN 'Low Visibility'
        WHEN Item_Visibility BETWEEN 0.05 AND 0.15 THEN 'Medium Visibility'
        ELSE                                          'High Visibility'
    END AS Visibility_Category,
    ROUND(AVG(Rating), 2) AS Avg_Rating
FROM blinkit_data
GROUP BY
    CASE
        WHEN Item_Visibility < 0.05              THEN 'Low Visibility'
        WHEN Item_Visibility BETWEEN 0.05 AND 0.15 THEN 'Medium Visibility'
        ELSE                                          'High Visibility'
    END;
