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
-- assume now is Aug 2021
-- Question: Find products that are increasingly being purchased over at least 3 months.
-- First, for each product calculate its total sales in August 2021 and compare that of the product in July 2021. Find those products whose sales in August 2021 is higher than that in July 2021.
-- Second, same as the first step, find those products whose sales in July 2021 is higher than that in June 2021.
-- Last, insersect the results of previous two steps and get the final results.

SELECT DISTINCT P.ProductName, P.Maker
FROM Product P
WHERE (
    SELECT SUM(R1.Quantity)
    FROM ProductInShop S1, Orders O1, OrderItem R1
    WHERE P.ProductName = S1.ProductName AND P.Maker = S1.Maker AND S1.IDinShoikee = R1.IDinShoikee AND O1.OrderID = R1.OrderID AND O1.OrderPlaced <= '2021-08-31' AND O1.OrderPlaced >= '2021-08-01'
) > (
    SELECT SUM(R2.Quantity)
    FROM ProductInShop S2, Orders O2, OrderItem R2
    WHERE P.ProductName = S2.ProductName AND P.Maker = S2.Maker AND S2.IDinShoikee = R2.IDinShoikee AND O2.OrderID = R2.OrderID AND O2.OrderPlaced <= '2021-07-31' AND O2.OrderPlaced >= '2021-07-01'
) AND (
    SELECT SUM(R3.Quantity)
    FROM ProductInShop S3, Orders O3, OrderItem R3
    WHERE P.ProductName = S3.ProductName AND P.Maker = S3.Maker AND S3.IDinShoikee = R3.IDinShoikee AND O3.OrderID = R3.OrderID AND O3.OrderPlaced <= '2021-07-31' AND O3.OrderPlaced >= '2021-07-01'
) > (
    SELECT SUM(R4.Quantity)
    FROM ProductInShop S4, Orders O4, OrderItem R4
    WHERE P.ProductName = S4.ProductName AND P.Maker = S4.Maker AND S4.IDinShoikee = R4.IDinShoikee AND O4.OrderID = R4.OrderID AND O4.OrderPlaced <= '2021-06-30' AND O4.OrderPlaced >= '2021-06-01'
);