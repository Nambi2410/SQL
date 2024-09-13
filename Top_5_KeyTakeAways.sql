--1. Top Countries by Sales Revenue:

SELECT Country, SUM(SalePrice) AS TotalSales
FROM sales_data
GROUP BY Country
ORDER BY TotalSales DESC
LIMIT 5;

--2. Average Sale Price by Gender:

SELECT Gender, AVG(SalePrice) AS AvgSalePrice
FROM sales_data
GROUP BY Gender;

--3. Most Popular Product Sizes:

SELECT "size_us", COUNT(*) AS TotalSold
FROM sales_data
GROUP BY "size_us"
ORDER BY TotalSold DESC
LIMIT 5;

--4. Top 5 Products by Sales:

SELECT ProductID, SUM(SalePrice) AS TotalSales
FROM sales_data
GROUP BY ProductID
ORDER BY TotalSales DESC
LIMIT 5;

--5. Impact of Discounts on Sales:

SELECT CASE WHEN Discount > 0 THEN 'Discounted' ELSE 'Non-Discounted' END AS DiscountStatus,
       COUNT(*) AS TotalOrders, SUM(SalePrice) AS TotalSales
FROM sales_data
GROUP BY DiscountStatus;


