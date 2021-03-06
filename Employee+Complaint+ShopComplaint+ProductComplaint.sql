--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `EmployeeID` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `MonthlySalary` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
);

--
-- Table structure for table `Complaint`
--

CREATE TABLE `Complaint` (
  `ComplaintID` varchar(30) NOT NULL,
  `EmployeeID` varchar(30) DEFAULT NULL,
  `UserID` varchar(30) NOT NULL,
  `Status` enum('pending','being handled','addressed') DEFAULT 'pending',
  `IssueTimestamp` timestamp NOT NULL,
  `HandleStartTimestamp` timestamp NULL DEFAULT NULL,
  `CloseTimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ComplaintID`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`),
  CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `UserTable` (`UserID`)
);

--
-- Table structure for table `ProductComplaint`
--

CREATE TABLE `ProductComplaint` (
  `ComplaintID` varchar(30) NOT NULL,
  `IDInShoikee` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ComplaintID`),
  KEY `IDInShoikee` (`IDInShoikee`),
  CONSTRAINT `productcomplaint_ibfk_1` FOREIGN KEY (`ComplaintID`) REFERENCES `Complaint` (`ComplaintID`),
  CONSTRAINT `productcomplaint_ibfk_2` FOREIGN KEY (`IDInShoikee`) REFERENCES `ProductInShop` (`IDInShoikee`)
);

--
-- Table structure for table `ShopComplaint`
--

CREATE TABLE `ShopComplaint` (
  `ComplaintID` varchar(30) NOT NULL,
  `ShopName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ComplaintID`),
  KEY `ShopName` (`ShopName`),
  CONSTRAINT `shopcomplaint_ibfk_1` FOREIGN KEY (`ShopName`) REFERENCES `Shop` (`ShopName`),
  CONSTRAINT `shopcomplaint_ibfk_2` FOREIGN KEY (`ComplaintID`) REFERENCES `Complaint` (`ComplaintID`)
);

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
        'pending',
        '2021-02-12',
        NULL,
        NULL); 
        
INSERT INTO Complaint
VALUES ('0002', '0002',
        'addressed',
        '2021-03-23',
        '2021-02-23',
        '2021-03-25');       
	
INSERT INTO Complaint
VALUES ('0003', '0001',
        'being handled',
        '2021-05-09',
        '2021-05-12',
        NULL);
        
INSERT INTO Complaint
VALUES ('0004', '0001',
        'addressed',
        '2021-07-01',
        '2021-07-07',
        '2021-07-19');
        
INSERT INTO Complaint
VALUES ('0005', '0001',
        'addressed',
        '2021-08-02',
        '2021-08-04',
        '2021-08-12');
        
INSERT INTO Complaint
VALUES ('0006', '0002',
        'addressed',
        '2021-08-09',
        '2021-08-17',
        '2021-08-19');
        
INSERT INTO Complaint
VALUES ('0007', '0004',
        'being handled',
        '2021-10-12',
        '2021-10-13',
        NULL);
        
INSERT INTO Complaint
VALUES ('0008', '0001',
        'being handled',
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
        
        
        