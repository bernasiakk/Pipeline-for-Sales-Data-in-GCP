-- SALES table is not here, reason: it was auto-created
-- when uploading the 1st file


--- VIEWS

-- biggest_buyers
SELECT
    CustomerID,
    Description,
    Country,
    round((quantity * unitprice), 2) as TotalAmount
FROM
    sales.orders
GROUP BY
    1, 2, 3, 4
ORDER BY
    TotalAmount desc


-- master_sales_view
SELECT
    *, ROUND((Quantity * UnitPrice), 2) 
AS
    TotalAmount 
FROM
    `morning-report-428716.sales.orders`


-- france_sales_view, uk_sales_view & usa_sales_view 
-- (just replace the last line for different countries)
SELECT
    *, ROUND((Quantity * UnitPrice), 2)
AS
    TotalAmount
FROM
    `morning-report-428716.sales.orders` 
WHERE
    Country = "France"