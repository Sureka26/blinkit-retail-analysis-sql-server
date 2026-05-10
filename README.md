# blinkit-retail-analysis-sql-server
Advanced SQL Server retail analytics project analyzing Blinkit grocery sales, outlet performance, inventory visibility, and business KPIs using CTEs, window functions, views, stored procedures, and business intelligence queries.

## Project Overview

This project focuses on analyzing Blinkit grocery retail data using SQL Server to uncover business insights related to sales performance, outlet efficiency, product demand, customer preferences, and inventory visibility.

The analysis was performed using advanced SQL techniques including CTEs, window functions, subqueries, views, stored procedures, ranking functions, and aggregate analysis.

The project simulates a real-world retail analytics environment where business stakeholders require data-driven insights to improve revenue, optimize outlet performance, identify high-performing products, and reduce operational inefficiencies.

The complete workflow includes:
- Data cleaning
- KPI analysis
- Product analysis
- Outlet analysis
- Visibility analysis
- Advanced SQL analysis
- Business insights generation

## Business Problem

Retail businesses like Blinkit manage thousands of products across multiple outlets and locations. Understanding sales performance, outlet contribution, customer preferences, and inventory visibility is essential for improving profitability and operational efficiency.

However, businesses often face challenges such as:
- Identifying high-performing and low-performing product categories
- Understanding which outlet types generate maximum revenue
- Measuring how product visibility impacts sales
- Detecting revenue-risk categories with low customer ratings
- Comparing outlet performance across different location tiers
- Generating data-driven insights for strategic business decisions

This project solves these business problems using SQL Server by transforming raw retail data into meaningful analytical insights.

## Project Objectives

- Analyze retail sales performance using SQL Server
- Identify top-performing and low-performing product categories
- Evaluate outlet contribution and efficiency
- Analyze customer rating patterns
- Study the impact of product visibility on revenue
- Perform advanced SQL-based business analysis
- Generate actionable business insights from raw data


## Dataset Information

- Dataset Name: Blinkit Grocery Dataset
- Domain: Retail / Grocery Analytics
- Format: CSV
- Total Records: ~8500
- Total Columns: 12
- Data Type: Structured Retail Sales Data

## Tools & Technologies Used

- SQL Server
- SQL Server Management Studio (SSMS)
- GitHub
- CSV Dataset

## Database Schema

### Table: blinkit_data

Main Columns Used:
- Item_Identifier
- Item_Type
- Item_Fat_Content
- Item_Visibility
- Item_Weight
- Outlet_Identifier
- Outlet_Type
- Outlet_Size
- Outlet_Location_Type
- Outlet_Establishment_Year
- Total_Sales
- Rating


## Project Workflow

1. Data Import
2. Data Cleaning
3. KPI Analysis
4. Product Performance Analysis
5. Outlet Analysis
6. Visibility Analysis
7. Advanced SQL Analysis
8. Views & Stored Procedures
9. Business Insights Generation


## SQL Concepts Used

- Aggregate Functions
- GROUP BY
- ORDER BY
- CASE Statements
- Window Functions
- CTEs (Common Table Expressions)
- Ranking Functions
- Views
- Stored Procedures
- Indexing
- Subqueries
- Joins
- NULL Handling

## Analysis Performed

### KPI Overview
- Total Revenue
- Average Sales
- Average Rating
- Total Products Sold

### Product Analysis
- Top Performing Categories
- Bottom Performing Categories
- Product Demand Analysis

### Outlet Analysis
- Outlet Revenue Contribution
- Tier-wise Outlet Analysis
- Outlet Efficiency Analysis

### Visibility Analysis
- Visibility Impact on Revenue
- Visibility vs Customer Rating

### Advanced Business Analysis
- Revenue Risk Analysis
- Category Segmentation
- Running Revenue Analysis
- High Performing Outlet Detection

## Key Business Insights

- Fruits and Vegetables generated the highest revenue
- Tier 3 outlets showed strong sales contribution
- Medium visibility products performed better in sales
- Some highly rated categories generated lower revenue
- Outlet type significantly impacts total revenue
- Customer ratings can help identify revenue-risk categories

## Advanced SQL Features Implemented

- CTE-based business analysis
- Window function ranking
- Revenue segmentation
- Running total analysis
- Stored procedures
- Views creation
- Ranking functions
- Subquery analysis

## Key Business Insights

1. Supermarket Type1 emerged as the dominant revenue contributor.
Supermarket Type1 outlets generated more than 65% of total revenue, significantly outperforming all other outlet formats. This indicates that large-format supermarket models remain the primary growth driver in the retail ecosystem.
2. Medium-sized outlets demonstrated the highest operational effectiveness.
Medium-sized outlets contributed the highest share of revenue (42%+), outperforming even high-sized outlets. This suggests that balanced store capacity and optimized inventory management may deliver better sales efficiency than larger outlet formats.
3. Tier 3 locations outperformed Tier 1 and Tier 2 markets in overall revenue.
Contrary to common retail assumptions, Tier 3 outlets generated the highest sales revenue. This highlights strong purchasing demand and potential market expansion opportunities in emerging locations.
4. Fruits & Vegetables and Snack Foods consistently ranked as the strongest-performing categories.
These categories achieved the highest revenue across category analysis, ranking analysis, and outlet-level segmentation, indicating strong and stable consumer demand patterns.
5. Seafood, Breakfast, and Starchy Foods were identified as underperforming categories.
These categories contributed the lowest revenue across the product portfolio, suggesting opportunities for pricing optimization, product repositioning, or targeted promotional strategies.
6. Product visibility showed limited correlation with revenue generation.
Low-visibility products generated higher overall revenue compared to highly visible products. This suggests that customer purchasing decisions may be influenced more by habitual buying behavior, brand familiarity, and essential product demand rather than shelf visibility alone.
7. Customer satisfaction remained stable across all visibility segments.
Average customer ratings remained highly consistent across low, medium, and high visibility groups (3.96–3.98), indicating that product visibility had minimal impact on perceived customer satisfaction.
8. Revenue accumulation trends remained stable across outlet establishment years.
Running revenue analysis showed gradual cumulative growth without extreme fluctuations, suggesting a relatively stable long-term sales pattern across outlet expansion periods.
9. Revenue-per-product metrics remained consistent across outlet types.
Revenue efficiency analysis revealed only minor differences in revenue generated per product sold across outlet formats, indicating pricing consistency and standardized customer basket behavior.
10. Consumer preferences varied across different location tiers.
Tier-based category analysis revealed that:
Tier 1 and Tier 3 locations showed stronger demand for Fruits & Vegetables.
Tier 2 locations demonstrated higher preference toward Snack Foods.
This highlights regional purchasing behavior differences and supports the need for location-specific inventory strategies.
11. Certain high-rated categories generated comparatively lower revenue, indicating untapped business potential.
Categories such as Meat received strong customer ratings despite lower sales contribution, suggesting opportunities for targeted marketing and assortment expansion.
12. Product-level revenue concentration revealed a small set of highly impactful products.
Top-performing individual products contributed disproportionately to overall revenue, indicating the importance of high-demand SKU optimization within the retail inventory structure.

This project combines SQL-based retail analytics with business-driven insight generation to identify revenue patterns, customer behavior trends, outlet performance, product segmentation, and operational opportunities using the Blinkit grocery dataset.
