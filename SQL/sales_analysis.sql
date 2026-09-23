-- Sales Forecasting & Analysis
-- Dataset: sales_data.csv
-- SQL dialect: MySQL 8+

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM sales_data;

-- 2. Total Quantity
SELECT SUM(Quantity) AS Total_Quantity
FROM sales_data;

-- 3. Monthly Sales Trend
SELECT
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    SUM(Sales) AS Monthly_Sales
FROM sales_data
GROUP BY DATE_FORMAT(Date, '%Y-%m')
ORDER BY Month;

-- 4. Yearly Sales
SELECT
    YEAR(Date) AS Year,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY YEAR(Date)
ORDER BY Year;

-- 5. Category Performance
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Quantity) AS Total_Quantity,
    AVG(Average_Price) AS Average_Price
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 6. Regional Performance
SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Quantity) AS Total_Quantity
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 7. Promotion Impact
SELECT
    Promotion,
    SUM(Sales) AS Total_Sales,
    AVG(Sales) AS Average_Sales,
    SUM(Quantity) AS Total_Quantity
FROM sales_data
GROUP BY Promotion;

-- 8. Holiday Impact
SELECT
    Holiday,
    SUM(Sales) AS Total_Sales,
    AVG(Sales) AS Average_Sales
FROM sales_data
GROUP BY Holiday;

-- 9. Monthly Category Analysis
SELECT
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    Category,
    SUM(Sales) AS Sales
FROM sales_data
GROUP BY DATE_FORMAT(Date, '%Y-%m'), Category
ORDER BY Month, Category;

-- 10. Quarterly Sales
SELECT
    YEAR(Date) AS Year,
    QUARTER(Date) AS Quarter,
    SUM(Sales) AS Sales
FROM sales_data
GROUP BY YEAR(Date), QUARTER(Date)
ORDER BY Year, Quarter;
