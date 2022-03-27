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

-- Inserting Data In Employee 
INSERT INTO Employee
VALUES ('0001', Megan, 3000);
INSERT INTO Employee
VALUES ('0002', Jeremy, 3000);
INSERT INTO Employee
VALUES ('0003', LiYing, 3000);
INSERT INTO Employee
VALUES ('0004', Clarrisa, 3000);

-- Inserting Data in Complaint
INSERT INTO Complaint
VALUES ('0001', 
		(SELECT EmployeeID 
        FROM Employee),
        (SELECT UserID
        FROM User),
        pending,
        2022-02-12,
        2022-02-13,
        2022-02-17); 
        
INSERT INTO Complaint
VALUES ('0002', 
		(SELECT EmployeeID 
        FROM Employee),
        (SELECT UserID
        FROM User),
        pending,
        2022-02-23,
        2022-02-23,
        2022-02-25);       
	
INSERT INTO Complaint
VALUES ('0003', 
		(SELECT EmployeeID 
        FROM Employee),
        (SELECT UserID
        FROM User),
        pending,
        2022-01-09,
        2022-01-12,
        2022-01-21);
        
INSERT INTO Complaint
VALUES ('0004', 
		(SELECT EmployeeID 
        FROM Employee),
        (SELECT UserID
        FROM User),
        pending,
        2022-03-01,
        2022-03-07,
        2022-03-19);
        