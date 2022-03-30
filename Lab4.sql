/*Q1: Frequent shoppers are shoppers who have purchased more than 2 items per shop for
at least 5 shops in the last 30 days. Who are the top 3 frequent shoppers in terms of the
total cost of the items they have purchased?*/


/*Q2: Popular shops are shops which have sold more than 3 items in the last 30 days. Who
are the top three shoppers in these popular shops in terms of the number of items they
have purchased?*/


/*Q3: Find the lowest history price of 'iPhone Xs' across all shops. List the corresponding
shoplD, timestamp and price.*/
SELECT P.ShopName, P.ProductName, H.TimeStamp, H.Price
FROM PriceHistory H, ProductInShop P
WHERE P.IDinShoikee = H.IDinShoikee AND P.ProductName = 'iPhone X'
AND H.Price IN (SELECT MIN(H.Price) AS LowestPrice
FROM PriceHistory H, ProductInShop P
WHERE H.IDinShoikee = P.IDinShoikee AND (P.ProductName = 'iPhone X' )
GROUP BY P.ProductName);