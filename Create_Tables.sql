--
-- Table structure for table `User`
--

CREATE TABLE UserTable(
    UserID VARCHAR(30) PRIMARY KEY,
    UserName VARCHAR(30)
);

--
-- Table structure for table `OrderTable`
--

CREATE TABLE OrderTable(
    OrderID VARCHAR(30) PRIMARY KEY,
    UserID VARCHAR(30),
    TotalShippingCost FLOAT,
    OrderPlaced DATETIME,
    ShippingAddress VARCHAR(80),
    FOREIGN KEY (UserID) REFERENCES UserTable(UserID)
);

--
-- Table structure for table `Product`
--

CREATE TABLE Product(
	ProductName VARCHAR(30),
    Maker VARCHAR(30),
    PRIMARY KEY (ProductName, Maker),
    Cost FLOAT,
    Category VARCHAR(30)
);

--
-- Table structure for table `Shop`
--

CREATE TABLE Shop(
	ShopName VARCHAR(30),
    NoOfProducts INT,
    PRIMARY KEY (ShopName)
);

--
-- Table structure for table `Employee`
--

CREATE TABLE Employee (
  EmployeeID varchar(30) NOT NULL,
  Name varchar(30) NOT NULL,
  MonthlySalary int DEFAULT NULL,
  PRIMARY KEY (EmployeeID)
);

--
-- Table structure for table `PriceHistory`
--

CREATE TABLE PriceHistory(
    IDinShoikee VARCHAR(30) PRIMARY KEY,
    Price FLOAT NOT NULL,
    TimeStamp DATETIME NOT NULL
);

--
-- Table structure for table `ProductInShop`
--

CREATE TABLE ProductInShop(
    IDinShoikee VARCHAR(30) PRIMARY KEY,
    ShopName VARCHAR(100) NOT NULL,
    ProductName VARCHAR(300) NOT NULL,
    Maker VARCHAR(30),
    IDinShop VARCHAR(30) NOT NULL,
    Price FLOAT NOT NULL,
    Quantity INT NOT NULL,
    Rate FLOAT,
    NumofUserRated INT NOT NULL,
    AverageRating FLOAT,
    FOREIGN KEY (ShopName) REFERENCES Shop(ShopName) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ProductName,Maker) REFERENCES Product(ProductName,Maker) ON DELETE CASCADE ON UPDATE CASCADE
);

--
-- Table structure for table `Complaint`
--

CREATE TABLE Complaint (
  ComplaintID varchar(30) NOT NULL,
  EmployeeID varchar(30) NULL,
  UserID varchar(30) NOT NULL,
  Status enum('pending','being handled','addressed') DEFAULT 'pending',
  IssueTimestamp DATETIME NOT NULL,
  HandleStartTimestamp DATETIME NULL,
  CloseTimestamp DATETIME NULL,
  PRIMARY KEY (ComplaintID),
  CONSTRAINT complaint_ibfk_1 FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT complaint_ibfk_2 FOREIGN KEY (UserID) REFERENCES UserTable (UserID) ON DELETE CASCADE ON UPDATE CASCADE
);

--
-- Table structure for table `ProductComplaint`
--

CREATE TABLE ProductComplaint (
  ComplaintID varchar(30) NOT NULL,
  IDInShoikee varchar(30) DEFAULT NULL,
  PRIMARY KEY (ComplaintID),
  CONSTRAINT productcomplaint_ibfk_1 FOREIGN KEY (ComplaintID) REFERENCES Complaint (ComplaintID) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT productcomplaint_ibfk_2 FOREIGN KEY (IDInShoikee) REFERENCES ProductInShop (IDInShoikee) ON DELETE CASCADE ON UPDATE CASCADE
);

--
-- Table structure for table `ShopComplaint`
--

CREATE TABLE ShopComplaint (
  ComplaintID varchar(30) NOT NULL,
  ShopName varchar(30) DEFAULT NULL,
  PRIMARY KEY (ComplaintID),
  CONSTRAINT shopcomplaint_ibfk_1 FOREIGN KEY (ShopName) REFERENCES Shop (ShopName) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT shopcomplaint_ibfk_2 FOREIGN KEY (ComplaintID) REFERENCES Complaint (ComplaintID) ON DELETE CASCADE ON UPDATE CASCADE
);

--
-- Table structure for table `OrderItem`
--

CREATE TABLE OrderItem(
    IDinShoikee VARCHAR(30),
    Status enum('being processed','shipped','delivered') DEFAULT 'being processed',
    SellPrice FLOAT,
    Quantity INT,
    ShippedTimeStamp DATETIME,
    Delivered DATETIME, 
    OrderID VARCHAR(30),
    IDinOrder INT, 
    PRIMARY KEY (OrderID, IDinOrder),
    FOREIGN KEY (OrderID) REFERENCES OrderTable(OrderID),
    FOREIGN KEY (IDinShoikee) REFERENCES ProductInShop(IDinShoikee)
);

--
-- Table structure for table `Review`
--

CREATE TABLE Review(
    ReviewID VARCHAR(30) PRIMARY KEY,
    Rating FLOAT,
    PlacedTime DATETIME, 
    Comment VARCHAR(500), 
    UserID VARCHAR(30), 
    OrderID VARCHAR(30), 
    IDinOrder INT,
    FOREIGN KEY (OrderID, IDinOrder) REFERENCES OrderItem(OrderID, IDinOrder),
    FOREIGN KEY (UserID) REFERENCES UserTable(UserID)
);