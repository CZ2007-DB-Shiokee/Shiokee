CREATE TABLE UserTable(
    UserID VARCHAR(30) PRIMARY KEY,
    UserName VARCHAR(30)
);

CREATE TABLE OrderTable(
    OrderID VARCHAR(30) PRIMARY KEY,
    UserID VARCHAR(30),
    TotalShippingCost FLOAT,
    OrderPlaced DATETIME,
    ShippingAddress VARCHAR(80),
    FOREIGN KEY (UserID) REFERENCES UserTable(UserID)
);

CREATE TABLE OrderItem(
    IDinShoikee VARCHAR(30) PRIMARY KEY,
    STATUS VARCHAR(10),
    SellPrice FLOAT,
    Quantity INT,
    ShippedTimeStamp DATETIME,
    Delivered Timestamp, 
    OrderID VARCHAR(30),
    IDinOrder INT, 
    FOREIGN KEY (OrderID) REFERENCES OrderTable(OrderID),
    UNIQUE(OrderID, IDinOrder)
);

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
