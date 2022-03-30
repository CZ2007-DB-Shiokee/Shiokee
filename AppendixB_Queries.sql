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
           