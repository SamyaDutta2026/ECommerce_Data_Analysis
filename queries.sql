SELECT
    Region,
    SUM(SalesRevenue) AS TotalRevenue,
    SUM(Profit) AS TotalProfit,
    COUNT(DISTINCT OrderID) AS TotalOrders
FROM
    sales_data
GROUP BY
    Region
ORDER BY
    TotalRevenue DESC;

SELECT
    T1.CustomerID,
    COUNT(T1.OrderID) AS NumberOfOrders,
    SUM(T1.SalesRevenue) AS CustomerLifetimeValue
FROM
    sales_data AS T1
GROUP BY
    T1.CustomerID
HAVING
    SUM(T1.SalesRevenue) > 1000
ORDER BY
    CustomerLifetimeValue DESC;

WITH MonthlyRevenue AS (
    SELECT
        strftime('%Y-%m', OrderDate) AS SaleMonth,
        SUM(SalesRevenue) AS CurrentMonthRevenue
    FROM
        sales_data
    GROUP BY
        SaleMonth
)
SELECT
    SaleMonth,
    CurrentMonthRevenue,
    LAG(CurrentMonthRevenue, 1, 0) OVER (ORDER BY SaleMonth) AS PreviousMonthRevenue,
    (CurrentMonthRevenue - LAG(CurrentMonthRevenue, 1, 0) OVER (ORDER BY SaleMonth)) * 100.0 / LAG(CurrentMonthRevenue, 1, 1) OVER (ORDER BY SaleMonth) AS GrowthRate_Percentage
FROM
    MonthlyRevenue
ORDER BY
    SaleMonth;
