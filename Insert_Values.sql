-- Inserting data into Product

INSERT INTO Product
VALUES ('Ultra white eraser', 'Faber-Castell', 3.90, 'Stationery');
INSERT INTO Product
VALUES ('iPhone XR', 'Apple', 500, 'Electronics');

-- Inserting data into Shop

INSERT INTO Shop
VALUES  ('ZStaionery', 23);
INSERT INTO Shop
VALUES  ('Otto electronics', 89);

-- Inserting data In Employee 

INSERT INTO Employee
VALUES ('0001', 'Megan', 3000);
INSERT INTO Employee
VALUES ('0002', 'Jeremy', 4500);
INSERT INTO Employee
VALUES ('0003', 'LiYing', 5000);
INSERT INTO Employee
VALUES ('0004', 'Clarrisa', 3500); 

-- Inserting data in Complaint
-- Should have 8 -> 4 for ProductComplain, 4 for ShopComplaint

INSERT INTO Complaint
VALUES ('0001', NULL,
        '0004','pending',
        '2021-02-12',
        NULL,
        NULL); 
        
INSERT INTO Complaint
VALUES ('0002', '0002',
        '0004','addressed',
        '2021-03-23',
        '2021-02-23',
        '2021-03-25');       
	
INSERT INTO Complaint
VALUES ('0003', '0001',
        '0001','being handled',
        '2021-05-09',
        '2021-05-12',
        NULL);
        
INSERT INTO Complaint
VALUES ('0004', '0001',
        '0002','addressed',
        '2021-07-01',
        '2021-07-07',
        '2021-07-19');
        
INSERT INTO Complaint
VALUES ('0003', '0001',
        '0002','addressed',
        '2021-08-02',
        '2021-08-04',
        '2021-08-12');
        
INSERT INTO Complaint
VALUES ('0004', '0002',
        '0004','addressed',
        '2021-08-09',
        '2021-08-17',
        '2021-08-19');
        
INSERT INTO Complaint
VALUES ('0002', '0004',
        '0001','being handled',
        '2021-10-12',
        '2021-10-13',
        NULL);
        
INSERT INTO Complaint
VALUES ('0003', '0001',
        '0003','being handled',
        '2021-11-20',
        '2021-11-23',
        NULL);

-- Inserting data into ProductComplaint

INSERT INTO ProductComplaint   
VALUES ('0001', 'ABC001');

INSERT INTO ProductComplaint   
VALUES ('0003', 'DEF002');

INSERT INTO ProductComplaint   
VALUES ('0004', 'GHI003'); 

INSERT INTO ProductComplaint   
VALUES ('0007', 'JKL004');


-- Inserting data into ShopComplaint

INSERT INTO ShopComplaint
VALUES ('0002', 'Shopee');
        
INSERT INTO ShopComplaint
VALUES ('0005', 'Uniqlo');
        
INSERT INTO ShopComplaint
VALUES ('0006', 'Samsung');
        
INSERT INTO ShopComplaint
VALUES ('0008', 'Giant');