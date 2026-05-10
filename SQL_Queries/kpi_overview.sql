USE blinkit_grocery_analysis;

SELECT
     ROUND(SUM(Total_Sales) / 1000000, 2) AS Total_Revenue_Million
FROM blinkit_data;

SELECT
     ROUND(AVG(Total_Sales),2) AS Avarege_Sales
FROM blinkit_data;

SELECT
     COUNT(*) AS Total_Items_Sold
FROM blinkit_data;

SELECT
     ROUND(AVG(Rating),2) AS Average_Rating
FROM blinkit_data;
