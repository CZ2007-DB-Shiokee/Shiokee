-- 5. Produce a list that contains (i) all products made by Samsung, 
SELECT `ProductName`
FROM `product`
WHERE `Maker` = 'Samsung';

-- and (ii) for each of them, the number of shops on Shiokee that sell the product.

SELECT p.Maker, p.ProductName, COUNT(*)
FROM `product` AS p JOIN `productinshop` AS ps ON p.Maker = ps.Maker AND p.ProductName = ps.ProductName
WHERE P.Maker = 'Samsung'
GROUP BY P.ProductName;

-- 6. Find shops that made the most revenue in August 2021.
-- Assuming revenue equals to the total price in shop - total cost in product, and seller only receives money after item is delivered
-- version1: join 3 tables and sub query twice
SELECT 
  tr.ShopName,
  MAX(tr.TotalRev) AS MaxRevenue 
FROM
  (SELECT 
    SUM(r.Revenue) AS TotalRev,
    r.ShopName 
  FROM
    (SELECT 
      (o.SellPrice - p.Cost) * o.Quantity AS Revenue,
      ps.ShopName 
    FROM
      `productinshop` AS ps 
      JOIN `product` AS p 
        ON p.Maker = ps.Maker 
        AND p.ProductName = ps.ProductName 
      JOIN `orderitem` AS o 
        ON ps.IDinShoikee = o.IDinShoikee 
    WHERE MONTH(o.Delivered) = 8 
      AND YEAR(o.Delivered) = 2021) AS r 
  GROUP BY r.ShopName) AS tr -- version2: sub query once
  SELECT 
    r.ShopName,
    MAX(TotalRevenue) AS MaxRevenue 
  FROM
    (SELECT 
      SUM((o.SellPrice - p.Cost) * o.Quantity) AS TotalRevenue,
      ps.ShopName 
    FROM
      `productinshop` AS ps 
      JOIN `product` AS p 
        ON p.Maker = ps.Maker 
        AND p.ProductName = ps.ProductName 
      JOIN `orderitem` AS o 
        ON ps.IDinShoikee = o.IDinShoikee 
    WHERE MONTH(o.Delivered) = 8 
      AND YEAR(o.Delivered) = 2021 
    GROUP BY ps.ShopName) AS r -- 7. For users that made the most amount of complaints, find the most expensive products he/she has ever purchased.
    SELECT 
      nc.UserID,
      ps.ProductName,
      ps.Maker,
      MAX(oi.SellPrice) AS MaxPrice 
    FROM
      (SELECT 
        UserID 
      FROM
        `complaint` 
      GROUP BY UserID 
      HAVING COUNT(*) = 
        (SELECT 
          MAX(nor) 
        FROM
          (SELECT 
            UserID,
            COUNT(ComplaintID) AS nor 
          FROM
            complaint 
          GROUP BY UserID) tb)) AS nc 
      RIGHT JOIN `ordertable` AS o 
        ON nc.UserID = o.UserID 
      RIGHT JOIN `orderitem` AS oi 
        ON o.OrderID = oi.OrderID,
      `productinshop` AS ps 
    WHERE ps.IDinShoikee = oi.IDinShoikee 
    GROUP BY nc.UserID 

    -- FROM ZHANG CHI
    -- First, for each user who has given complaints before, find all complaints and orders that he/she had and group them using UserID.
    -- Second, from the first step, we need to find the user who has given most complaints by using 'HAVING' to compare the number of complaints between different users and find the one that is greater or eaqual to the others with '>= ALL'.
    -- Last, with the user who gave most compaints use 'MAX()' to find the most expensive product he/she has purchased.
    
    SELECT C.UserID, MAX(I.SellPrice) AS MostExpensiveProductTheUserPurchased
    FROM Complaint C, OrderItem I, Orders O
    WHERE C.UserID = O.UserID AND O.OrderID = I.OrderID
    GROUP BY C.UserID
    HAVING COUNT(C.ComplaintID) >= ALL (
        SELECT COUNT(C1.ComplaintID)
        FROM Complaint AS C1
        GROUP BY C1.UserID
    );

-- 8. Find products that have never been purchased by some users, but are the top 5 most purchased products by other users in August 2021.
-- subquery1: find set of products where it hasn't appear in any purchase for some user
      SELECT 
        * 
      FROM
        (SELECT DISTINCT 
          t1.ProductName,
          t1.Maker 
        FROM
          (SELECT DISTINCT 
            o1.UserID,
            ps1.ProductName,
            ps1.Maker 
          FROM
            `productinshop` AS ps1,
            `ordertable` AS o1) AS t1 
          LEFT OUTER JOIN 
            (SELECT DISTINCT 
              o2.UserID,
              ps2.ProductName,
              ps2.Maker 
            FROM
              `productinshop` AS ps2,
              `orderitem` AS oi2,
              `ordertable` AS o2 
            WHERE ps2.IDInShoikee = oi2.IDInShoikee 
              AND oi2.OrderID = o2.OrderID 
              AND MONTH(o2.OrderPlaced) = 8 
              AND YEAR(o2.OrderPlaced) = 2021) AS t2 
            ON t2.ProductName = t1.ProductName 
            AND t2.Maker = t1.Maker 
        WHERE t2.UserID IS NULL) AS t5 
        INNER JOIN 
          (SELECT DISTINCT 
            t3.ProductName,
            t3.Maker 
          FROM
            (SELECT DISTINCT 
              o1.UserID,
              ps1.ProductName,
              ps1.Maker 
            FROM
              `productinshop` AS ps1,
              `ordertable` AS o1) AS t3 
            LEFT OUTER JOIN 
              (SELECT 
                o2.UserID,
                ps2.ProductName,
                ps2.Maker 
              FROM
                `productinshop` AS ps2,
                `orderitem` AS oi2,
                `ordertable` AS o2 
              WHERE ps2.IDInShoikee = oi2.IDInShoikee 
                AND oi2.OrderID = o2.OrderID 
                AND MONTH(o2.OrderPlaced) = 8 
                AND YEAR(o2.OrderPlaced) = 2021 
              GROUP BY o2.UserID,
                ps2.ProductName,
                ps2.Maker 
              ORDER BY COUNT(*) DESC 
              LIMIT 5) AS t4 
              ON t4.ProductName = t3.ProductName 
              AND t4.Maker = t3.Maker 
          WHERE t4.UserID IS NULL) t6
          USING (ProductName, Maker)          
          -- subquery2: find set of products where it is the top 5 purchased product for some users
          -- 9. Find products that are increasingly being purchased over at least 3 months.



-- 5. Produce a list that contains (i) all products made by Samsung, 
SELECT `ProductName`
FROM `product`
WHERE `Maker` = 'Samsung';
-- and (ii) for each of them, the number of shops on Shiokee that sell the product.
SELECT p.Maker, p.ProductName, COUNT(*)
FROM `product` AS p JOIN `productinshop` AS ps ON p.Maker = ps.Maker AND p.ProductName = ps.ProductName
WHERE P.Maker = 'Samsung'
GROUP BY P.ProductName;

-- 6. Find shops that made the most revenue in August 2021.
-- Assuming revenue equals to the total price in shop - total cost in product, and seller only receives money after item is delivered
  SELECT r.ShopName -- return shopname
  FROM( -- subquery: Find shop with most revenue
  SELECT SUM((oi.SellPrice - p.Cost) * oi.Quantity) AS TotalRevenue, ps.ShopName 
    FROM `orderitem` AS oi -- join 'orderitem' table with 'product in shop' table to find its Product Name and Maker
      JOIN `productinshop` AS ps ON ps.IDinShoikee = oi.IDinShoikee -- join 'resulting table with 'product' table to find its cost
      JOIN `product` AS p ON p.Maker = ps.Maker AND p.ProductName = ps.ProductName -- After joining the table, we can use sell price minus cost to get the revenue, assuming no other cost for seller
    WHERE MONTH(oi.Delivered) = 8 AND YEAR(oi.Delivered) = 2021 -- logic behind using oi.Delivered: assume the seller only get money once the order is received by customer
    GROUP BY ps.ShopName
    ORDER BY SUM((oi.SellPrice - p.Cost) * oi.Quantity) -- sum up the revenue for all products sold in shop
    DESC LIMIT 1) AS r; -- return the highest revenue only, name the returned table as r

    -- 7. For users that made the most amount of complaints, find the most expensive products he/she has ever purchased.
    SELECT nc.UserID, ps.ProductName, ps.Maker, MAX(oi.SellPrice) AS MaxPrice -- At last, select the max price in group
    FROM ( -- subquery1: find the user who filed most times of complaints
    SELECT UserID FROM `complaint` GROUP BY UserID HAVING COUNT(*) = 
        (SELECT MAX(nor) FROM (SELECT UserID, COUNT(ComplaintID) AS nor FROM complaint GROUP BY UserID) tb)) AS nc -- end of subquery, return the result in a table named nc(no of complaints)
      LEFT JOIN `orders` AS o ON nc.UserID = o.UserID -- left join orders with users complainted for the most to obtain the OrderID 
      LEFT JOIN `orderitem` AS oi ON o.OrderID = oi.OrderID -- left join orderItem with orders to find the sellprice of all the product that the user has purchased
      LEFT JOIN `productinshop` AS ps ON ps.IDinShoikee = oi.IDinShoikee -- join product in shop table to find the name of product
    -- end of FROM clause, below group by userID and PK of product logic for grouping in UserID: (in case there are multiple users with same numbers of complaints)
    GROUP BY nc.UserID, ps.ProductName, ps.Maker;

-- 8. Find products that have never been purchased by some users, but are the top 5 most purchased products by other users in August 2021.
      SELECT * -- the most outer query
      FROM ( -- start of subquery1, purpose: return the Product Name and its Maker for the products that have never been purchased by some user
      SELECT DISTINCT t1.ProductName, t1.Maker 
        FROM -- level2 subquery: For each user, find the products they have never purchased, make these products into a set
        (SELECT DISTINCT o1.UserID,ps1.ProductName,ps1.Maker 
          FROM `productinshop` AS ps1, `orders` AS o1) AS t1 -- table1: using cartesian product to get all possible user-product combination
          LEFT OUTER JOIN 
          (SELECT DISTINCT o2.UserID, ps2.ProductName, ps2.Maker 
            FROM `productinshop` AS ps2, `orderitem` AS oi2, `orders` AS o2 
            WHERE ps2.IDInShoikee = oi2.IDInShoikee -- join 'productinshop' table and 'orderitem' table to find the productname of purchased items
              AND oi2.OrderID = o2.OrderID -- join resulting table with 'order' table to find userID
              AND MONTH(o2.OrderPlaced) = 8 AND YEAR(o2.OrderPlaced) = 2021) AS t2 -- table2: find the user-product combination that has appeared in orders
            ON t2.ProductName = t1.ProductName AND t2.Maker = t1.Maker AND t2.UserID = t1.UserID -- left outer join on table1 to obtain 
        WHERE t2.UserID IS NULL) AS t3
        -- end of subquery1
        INNER JOIN -- main query: mimic the behaviour of intersection
        ( -- start of subquery2, purpose: find set of products where it is the top 5 purchased product for some users
        SELECT t4.ProductName, t4.Maker 
        FROM( -- level2 subquery: for each user, return the top 5 purchased product
          SELECT DISTINCT ps.ProductName, ps.Maker, COUNT(*)
              FROM `productinshop` AS ps, `orderitem` AS oi,`orders` AS o -- join the three table to find the name of most purchased item by user
              WHERE ps.IDInShoikee = oi.IDInShoikee AND oi.OrderID = o.OrderID 
              AND MONTH(o.OrderPlaced) = 8 AND YEAR(o.OrderPlaced) = 2021 -- logic for using o.OrderPlaced instead of orderitem.delivered: assume purchase is done once the order is placed
              GROUP BY o.UserID, ps.ProductName, ps.Maker 
              ORDER BY COUNT(*) DESC LIMIT 5) AS t4 -- t4: table that contains the top 5 purchased pruduct and its purchased time for each user
              ) t5 -- t5: table with only purchased name for intersection with t3
		-- end of subquery2
          USING (ProductName, Maker); -- main query: join the 2 subquery to find the intersection part
