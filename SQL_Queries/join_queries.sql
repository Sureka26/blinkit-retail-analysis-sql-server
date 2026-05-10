USE blinkit_grocery_analysis;

CREATE TABLE outlet_region (
    Outlet_Identifier   VARCHAR(10),
    Region_Manager      VARCHAR(50),
    Zone                VARCHAR(20)
);

INSERT INTO outlet_region VALUES ('OUT010', 'Rajesh Kumar',  'North');
INSERT INTO outlet_region VALUES ('OUT013', 'Priya Sharma',  'South');
INSERT INTO outlet_region VALUES ('OUT017', 'Anil Verma',    'East');
INSERT INTO outlet_region VALUES ('OUT018', 'Sunita Rao',    'West');
INSERT INTO outlet_region VALUES ('OUT019', 'Karthik Nair',  'South');
INSERT INTO outlet_region VALUES ('OUT027', 'Meera Iyer',    'North');
INSERT INTO outlet_region VALUES ('OUT035', 'Vikram Singh',  'West');
INSERT INTO outlet_region VALUES ('OUT045', 'Deepa Menon',   'East');
INSERT INTO outlet_region VALUES ('OUT046', 'Arjun Patel',   'North');
INSERT INTO outlet_region VALUES ('OUT049', 'Sneha Reddy',   'South');

SELECT
    b.Outlet_Identifier,
    r.Region_Manager,
    r.Zone,
    ROUND(SUM(b.Total_Sales), 2) AS Revenue,
    ROUND(AVG(b.Rating), 2)      AS Avg_Rating
FROM blinkit_data b
INNER JOIN outlet_region r
    ON b.Outlet_Identifier = r.Outlet_Identifier
GROUP BY
    b.Outlet_Identifier,
    r.Region_Manager,
    r.Zone
ORDER BY Revenue DESC;


SELECT
    r.Zone,
    COUNT(DISTINCT b.Outlet_Identifier) AS Total_Outlets,
    ROUND(SUM(b.Total_Sales), 2)        AS Total_Revenue,
    ROUND(AVG(b.Rating), 2)             AS Avg_Rating
FROM blinkit_data b
INNER JOIN outlet_region r
    ON b.Outlet_Identifier = r.Outlet_Identifier
GROUP BY r.Zone
ORDER BY Total_Revenue DESC;
