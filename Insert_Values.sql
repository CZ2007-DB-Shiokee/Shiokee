
   
-- Inserting data into Product

INSERT INTO Product
VALUES ('White Eraser', 'Faber-Castell', 1.90, 'Stationery'),
('Black pen', 'Zebra', 2.90, 'Stationary'),
('Blue pen', 'Zebra', 2.90, 'Stationary'),
('Red pen', 'Zebra', 2.90, 'Stationary'),
('Database textbook', 'Pearson', 39.00, 'Books'),
('Color pencils', 'Faber-Castell', 15.90, 'Stationary'), -- Popular items
('iPhone XR', 'Apple', 1500, 'Electronics'),
('Headphones', 'JBL', 1000, 'Electronics'),
('Monitor', 'DELL', 2100, 'Electronics'),
('Gaming mouse', 'Razer', 159, 'Electronics'),
('Gaming keyboard', 'Razer', 189, 'Electronics'),
('Hair curler', 'Dyson', 599, 'Electronics'),
('Gaming chair', 'Secret Lab', 580, 'Furniture'), -- Challenger items
('Loose powder', 'Chanel', 79.90, 'Makeup'),
('CC Cream', 'IT Cosmetic', 83.90, 'Makeup'),
('Foundation', 'Mabelline', 24, 'Makeup'),
('Mascara', 'Mabelline', 11.50, 'Makeup'),
('Blush', 'NARS', 53.90, 'Makeup'),
('Daisy', 'Marc Jacob', 76, 'Perfume'),
('FEMME', 'ZARA', 19.99, 'Perfume'), -- Sephora items
('Airism Mask', 'Uniqlo', 9.90, 'Clothing'),
('Tote bag', 'Uniqlo', 12.99, 'Accessories'),
('V-neck shirt', 'Uniqlo', 15, 'Clothing'),
('Crew neck shirt', 'Uniqlo', 19, 'Clothing'),
('Dress', 'Uniqlo', 23, 'Clothing'),
('Sweater', 'Uniqlo', 15.99, 'Clothing'),
('Shoes', 'Uniqlo', 19.90, 'Clothing'), 
('Jacket', 'Uniqlo', 25, 'Clothing'), -- Uniqlo items
('Chair', 'Ikea', 23.90, 'Furniture'),
('Table', 'Ikea', 33.90, 'Furniture'),
('Soft toy', 'Ikea', 12, 'Toys'),
('Sofa', 'Ikea', 399, 'Furniture'),
('Bedsheet', 'Ikea', 30, 'Household'),
('Pillow', 'Ikea', 50, 'Household'),
('Cabinet', 'Ikea', 55.90, 'Furniture'), -- Ikea items
('iPhoneX', 'Apple', 1100, 'Phone'),
('iPhone11', 'Apple', 1200, 'Phone'),
('iPhone13', 'Apple', 1299, 'Phone'),
('iPhone13Pro', 'Apple', 1399, 'Phone'),
('iPad Air', 'Apple', 1500, 'Tablet'),
('MacBook', 'Apple', 1800, 'Laptop'),
('Airpods Pro', 'Apple', 539, 'Headphones'), -- Apple items
('Bread', 'Gardenia', 3.99, 'Food'),
('Toilet paper', 'Softy', 12.90, 'Toiletries'),
('Shampoo', 'Dove', 16.90, 'Toiletries'),
('Pork belly', 'ABC Butchery', 13.90, 'Food'),
('Wagyu Beef', 'ABC Butchery', 25.90, 'Food'),
('Tom yum cup noodles', 'Nissin', 2.90, 'Food'); -- Giant items




-- Inserting data into Shop

INSERT INTO Shop
VALUES  ('Popular', 23),
('Challenger', 89),
('Sephora', 10000),
('Uniqlo', 488),
('Ikea', 700),
('Uniqlo', 488),
('Apple', 89),
('Giant', 454);

-- Inserting data In Employee 

INSERT INTO Employee
VALUES ('0001', 'Megan', 3000),
('0002', 'Jeremy', 4500),
('0003', 'LiYing', 5000),
('0004', 'Beyonce', 3500),
('0005', 'Estelle', 3000),
('0006', 'Aamir', 2300),
('0007', 'Kinga', 1700),
('0008', 'Jimmy', 1500),
('0009', 'Padraig', 2700),
('0010', 'Amaya', 5500),
('0011', 'Peterson', 4550),
('0012', 'Norman', 1500);

-- Inserting data In Employee 

INSERT INTO UserTable
VALUES ('0001', 'Angela123'),
('0002', '91Alpha'),
('0003', 'Blue_Sky'),
('0004', 'DanceMonkey'),
('0005', 'defeatfate'),
('0006', '00Biker'),
('0007', '7-Senses'),
('0008', 'Silver10Dragon'),
('0009', 'OliverPaterson1'),
('0010', 'Dancer_Cassie');

-- Inserting data in Complaint
-- Should have 8 -> 4 for ProductComplain, 4 for ShopComplaint

INSERT INTO Complaint
VALUES ('0001', NULL,
'0004','pending',
'2021-02-12',
NULL,
NULL),
('0002', '0012',
'0004','addressed',
'2021-03-23',
'2021-02-23',
'2021-03-25'),      
('0003', '0007',
'0001','being handled',
'2021-05-09',
'2021-05-12',
NULL),
('0004', '0001',
'0002','addressed',
'2021-07-01',
'2021-07-07',
'2021-07-19'),
 ('0005', '0003',
'0002','addressed',
'2021-08-02',
'2021-08-04',
'2021-08-12'),
('0006', '0005',
'0004','addressed',
'2021-08-09',
'2021-08-17',
'2021-08-19'),
('0007', '0004',
'0001','being handled',
'2021-10-12',
'2021-10-13',
NULL),
('0008', '0007',
'0003','being handled',
'2021-11-20',
'2021-11-23',
NULL),
('0009', NULL,
'0004','pending',
'2021-09-21',
NULL,
NULL),
('0010', '0006',
'0002','addressed',
'2021-03-26',
'2021-04-03',
'2021-04-16'),
('0011', '0011',
'0003','being handled',
'2021-06-21',
'2021-06-22',
NULL),
('0012', NULL,
'0004','pending',
'2021-11-01',
NULL,
NULL),
('0013', NULL,
'0004','pending',
'2021-03-03',
NULL,
NULL),
('0014', '0002',
'0003','being handled',
'2021-02-09',
'2021-02-18',
NULL),
('0015', '0009',
'0003','being handled',
'2021-05-15',
'2021-05-19',
NULL),
('0016', '0004',
'0002','addressed',
'2021-06-26',
'2021-07-01',
'2021-07-09');


-- Inserting data into ProductComplaint

INSERT INTO ProductComplaint   
VALUES ('0001', 'ABC001'),
('0003', 'DEF002'),
('0004', 'GHI003'), 
('0007', 'JKL004'),
('0008', 'MNO005'),
('0009', 'QRS006'),
('0012', 'TUV007'),
('0015', 'XYZ008');

-- Inserting data into ShopComplaint

INSERT INTO ShopComplaint
VALUES ('0002', 'Apple'),
('0005', 'Uniqlo'),
('0006', 'Sephora'),
('0010', 'Giant'),
('0011', 'Giant'),
('0013', 'Sephora'),
('0014', 'Ikea'),
('0015', 'Chllenger');