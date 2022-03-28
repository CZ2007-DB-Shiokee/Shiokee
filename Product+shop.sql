CREATE TABLE Product(
	ProductName VARCHAR(30),
    Maker VARCHAR(30),
    PRIMARY KEY (ProductName, Maker),
    Cost FLOAT,
    Category VARCHAR(30)
);

CREATE TABLE Shop(
	ShopName VARCHAR(30),
    NoOfProducts INT
);

INSERT INTO Product
VALUES ('Ultra white eraser', 'Faber-Castell', 3.90, 'Stationery');
INSERT INTO Product
VALUES ('iPhone XR', 'Apple', 500, 'Electronics');

INSERT INTO Shop
VALUES  ('ZStaionery', 23);
INSERT INTO Shop
VALUES  ('Otto electronics', 89);

