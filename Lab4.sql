/*Q1: Frequent shoppers are shoppers who have purchased more than 2 items per shop for
at least 5 shops in the last 30 days. Who are the top 3 frequent shoppers in terms of the
total cost of the items they have purchased?*/


/*Q2: Popular shops are shops which have sold more than 3 items in the last 30 days. 
Who are the top three shoppers in these popular shops in terms of the number of items they
have purchased?*/

SELECT O.UserID, PI.ShopName, SUM(OI.Quantity) AS TotalQuantity
FROM(SELECT PI.ShopName  -- Query for finding popular shops
FROM Orders O, OrderItem OI, ProductInShop PI
WHERE O.OrderID = OI.OrderID AND PI.IDinShoikee = OI.IDinShoikee
AND DATEDIFF('2021-09-01'/*NOW()*/,O.OrderPlaced) BETWEEN 0 AND 30
GROUP BY PI.ShopName
HAVING SUM(OI.Quantity) >= 3) AS t1,
Orders O, OrderItem OI, ProductInShop PI
WHERE O.OrderID = OI.OrderID AND OI.IDinShoikee = PI.IDinShoikee -- join three tables
AND t1.ShopName = PI.ShopName
GROUP BY O.UserID, PI.ShopName
ORDER BY SUM(OI.Quantity) DESC LIMIT 3; -- then select the popular shops


/*Q3: Find the lowest history price of 'iPhone Xs' across all shops. List the corresponding
shoplD, timestamp and price.*/
SELECT P.ShopName, P.ProductName, H.TimeStamp, H.Price
FROM PriceHistory H JOIN ProductInShop P ON P.IDinShoikee = H.IDinShoikee
WHERE P.ProductName = 'iPhone X'
AND H.Price IN (SELECT MIN(H.Price) AS LowestPrice
FROM PriceHistory H, ProductInShop P
WHERE H.IDinShoikee = P.IDinShoikee AND P.ProductName = 'iPhone X' 
GROUP BY P.ProductName);