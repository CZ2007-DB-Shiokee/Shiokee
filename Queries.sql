-- query for Question 1
-- Question: Find the average price of “iPhone Xs” on Shiokee from 1 August 2021 to 31 August 2021.
-- To find the averge price for 'iPhone X' series, we need PriceHistory table for prices in August 2021 and we also need ProductInShop table for product name.
-- As we are finding those products under 'iPhone X' series, their names should start with 'iPhone X' and be followed by nothing or one character, so we choose to use 'iPhone X' and 'iPhone X_'.

SELECT P.ProductName, AVG(H.Price) AS AveragePrice
FROM PriceHistory H, ProductInShop P
WHERE H.TimeStamp >= '2021-08-01' AND H.TimeStamp <= '2021-08-31' AND H.IDinShoikee = P.IDinShoikee AND (P.ProductName LIKE 'iPhone X' OR P.ProductName LIKE 'iPhone X_')
GROUP BY P.ProductName;

-- query for Question 2
-- Question: Find products that received at least 100 ratings of “5” in August 2021, and order them by their average ratings.
-- First, use a subquery to find the ProductName of all the products that received at least 100 ratings of “5” in August 2021.
-- Second, for those Product whose name is in the previous subquery, we calculate its average rating in August 2021.

SELECT P.ProductName, AVG(R.Rating) AS AverageRating
FROM ProductInShop P, OrderItem O, Review R
WHERE P.IDinShoikee = O.IDinShoikee AND R.OrderID = O.OrderID AND R.IDinOrder = O.IDinOrder AND R.PlacedTime <= '2021-08-31' 
AND R.PlacedTime >= '2021-08-01' AND P.ProductName IN (
    SELECT P1.ProductName
    FROM ProductInShop P1, OrderItem O1, Review R1
    WHERE P1.IDinShoikee = O1.IDinShoikee AND R1.OrderID = O1.OrderID AND R1.IDinOrder = O1.IDinOrder AND R1.PlacedTime <= '2021-08-31' AND R1.PlacedTime >= '2021-08-01' AND R1.Rating = 5
    GROUP BY  P1.ProductName
    HAVING COUNT(*) >= 100
)
GROUP BY  P.ProductName
ORDER BY AverageRating;

-- query for Question 3
-- Question: For all products purchased in June 2021 that have been delivered, find the average time from the ordering date to the delivery date.
-- First, find all delivered products that are purchased in June 2021 by using the OrderPlaced attribute in Orders table and the Status in OrderItem table.
-- Second, calculate the average delivery time by puting the difference between the time the product was placed and the time it was delivered (calculated using TIMESTAMPDIFF()) into AVG().

SELECT AVG(TIMESTAMPDIFF(DAY,O.OrderPlaced,I.Delivered)) AS AverageDeliveryTimeInDays
FROM OrderItem I, Orders O
WHERE I.Status = 'delivered' AND I.OrderID = O.OrderID AND O.OrderPlaced <= '2021-06-30' AND O.OrderPlaced >= '2021-06-01';

-- query for Question 4
-- Question: Let us define the “latency” of an employee by the average that he/she takes to process a complaint. Find the employee with the smallest latency.
-- First, for each employee, find all complaints that are in 'addressed' state and with the same EmployeeID as his and calculate his average 'latency' by averaging the difference between HandleStartTimestamp and CloseTimestamp.
-- Second, compare the average 'latency' of the employee with others to find the one with minimum latency.

SELECT E.EmployeeID, E.Name, AVG(TIMESTAMPDIFF(HOUR,C.HandleStartTimestamp,C.CloseTimestamp)) AS LatencyInHours
FROM Employee E, Complaint C
WHERE C.EmployeeID = E.EmployeeID AND C.Status = 'addressed'
GROUP BY E.EmployeeID
HAVING AVG(TIMESTAMPDIFF(HOUR,C.HandleStartTimestamp,C.CloseTimestamp)) <= ALL (
    SELECT AVG(TIMESTAMPDIFF(HOUR,C1.HandleStartTimestamp,C1.CloseTimestamp))
    FROM Complaint C1
    WHERE C1.Status = 'addressed'
    GROUP BY C1.EmployeeID
);

-- query for Question 9
-- assume 'at least 3 months' refers to 3 consecutive months and 'increase' means greater than
-- Question: Find products that are increasingly being purchased over at least 3 months.
-- To compare between specific month and the sales of the month, a lot of use of functions are involved and it is clearer if we use a temporary view to prepare those data.
-- Hence, firstly, we prepare the data of month, year and totalsales for each Product.
-- Second, for each product and a specific month, we compare the sales of the product in the month with that of the last month and filter out those whose sales are greater than that of last month.
-- Third, similar the previous step, we find the product with the totalsales in a month that is less than that of next month.
-- Last, use 'AND' to combine the previous two conditions to the results.

WITH Sales AS (
    SELECT P.ProductName, P.Maker, MONTH(O.OrderPlaced) AS Month, YEAR(O.OrderPlaced) AS Year, SUM(I.Quantity) AS TotalSales
    FROM ProductInShop P, OrderItem I, Orders O
    WHERE P.IDinShoikee = I.IDinShoikee AND I.OrderID = O.OrderID
    GROUP BY P.ProductName, P.Maker, Year, Month
) SELECT S.ProductName, S.Maker
FROM Sales AS S
WHERE EXISTS (
    SELECT S1.ProductName
    FROM Sales S1
    WHERE S.ProductName = S1.ProductName AND S.Maker = S1.Maker AND S.Year = S1.Year AND S.Month-1 = S1.Month AND S.TotalSales > S1.TotalSales
    ) AND EXISTS 
    (
    SELECT S2.ProductName
    FROM Sales S2
    WHERE S.ProductName = S2.ProductName AND S.Maker = S2.Maker AND S.Year = S2.Year AND S.Month+1 = S2.Month AND S.TotalSales < S2.TotalSales
    );