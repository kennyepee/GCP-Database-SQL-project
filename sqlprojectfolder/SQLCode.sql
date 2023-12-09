CREATE TABLE Suppliers (SupplierID INT NOT NULL,
  CompanyName VARCHAR(30),
  ContactLastName VARCHAR (30),
  ContactFirstName VARCHAR(30),
  Phone VARCHAR(10),
  PRIMARY KEY (SupplierID));
 
  CREATE TABLE Subjects (SubjectID INT NOT NULL,
  CategoryName VARCHAR(30),
  PRIMARY KEY (SubjectID));

  CREATE TABLE Books (BookID INT NOT NULL,
    Title VARCHAR(30),
    UnitPrice DECIMAL(10,2),
    Author VARCHAR(30),
    Quantity INT,
    SupplierID INT NOT NULL,
    SubjectID INT NOT NULL,
    PRIMARY KEY (BookID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID));

    CREATE TABLE Customers (CustomerID INT NOT NULL,
    LastName VARCHAR(30),
    FirstName VARCHAR(30),
    Phone VARCHAR(12),
    PRIMARY KEY (CustomerID));

    CREATE TABLE Employees (EmployeeID INT NOT NULL,
    LastName VARCHAR(30),
    FirstName VARCHAR(30),
    PRIMARY KEY (EmployeeID));

    CREATE TABLE Shippers (ShipperID INT NOT NULL,
    ShipperName VARCHAR(40),
    PRIMARY KEY (ShipperID));

    CREATE TABLE Orders (OrderID INT NOT NULL,
    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    OrderDate DATE,
    ShippedDate DATE,
    ShipperID INT,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID));

    CREATE TABLE OrderDetails (BookID INT NOT NULL,
    OrderID INT NOT NULL,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID));

    INSERT INTO Suppliers VALUES ('1', 'supplier1', 'company1', 'company1', '1111111111');
    INSERT INTO Suppliers VALUES ('2', 'supplier2', 'company2', 'company2', '2222222222');
    INSERT INTO Suppliers VALUES ('3', 'supplier3', 'company3', 'company3', '3333333333');
    INSERT INTO Suppliers VALUES ('4', 'supplier4', 'company4', NULL, '3333333333');

    INSERT INTO Subjects VALUES ('1', 'category1');
    INSERT INTO Subjects VALUES ('2', 'category2');
    INSERT INTO Subjects VALUES ('3', 'category3');
    INSERT INTO Subjects VALUES ('4', 'category4');
    INSERT INTO Subjects VALUES ('5', 'category5');

    INSERT INTO Books VALUES ('1', 'book1', '12.34', 'author1','5','3','1');
    INSERT INTO Books VALUES ('2', 'book2', '56.78', 'author2','2','3','1');
    INSERT INTO Books VALUES ('3', 'book3', '90.12', 'author3','10','2','1');
    INSERT INTO Books VALUES ('4', 'book4', '34.56', 'author4','12','3','2');
    INSERT INTO Books VALUES ('5', 'book5', '78.9', 'author5','5','2','2');
    INSERT INTO Books VALUES ('6', 'book6', '12.34', 'author6','30','1','3');
    INSERT INTO Books VALUES ('7', 'book7', '56.9', 'author2','17','3','4');
    INSERT INTO Books VALUES ('8', 'book8', '33.44', 'author7','2','1','3');

    INSERT INTO Customers VALUES ('1', 'lastname1', 'firstname1','334-001-001');
    INSERT INTO Customers VALUES ('2', 'lastname2', 'firstname2','334-002-002');
    INSERT INTO Customers VALUES ('3', 'lastname3', 'firstname3','334-003-003');
    INSERT INTO Customers VALUES ('4', 'lastname4', 'firstname4','334-004-004');

    INSERT INTO Employees VALUES ('1', 'lastname5', 'firstname5');
    INSERT INTO Employees VALUES ('2', 'lastname6', 'firstname6');
    INSERT INTO Employees VALUES ('3', 'lastname6', 'firstname9');

    INSERT INTO Shippers VALUES ('1', 'shipper1');
    INSERT INTO Shippers VALUES ('2', 'shipper2');
    INSERT INTO Shippers VALUES ('3', 'shipper3');
    INSERT INTO Shippers VALUES ('4', 'shipper4');

    INSERT INTO Orders VALUES ('1', '1', '1','2016-08-01','2016-08-03','1');
    INSERT INTO Orders VALUES ('2', '1', '2','2016-08-04',NULL,NULL);
    INSERT INTO Orders VALUES ('3', '2', '1','2016-08-01','2016-08-04','2');
    INSERT INTO Orders VALUES ('4', '4', '2','2016-08-04','2016-08-04','1');
    INSERT INTO Orders VALUES ('5', '1', '1','2016-08-04','2016-08-05','1');
    INSERT INTO Orders VALUES ('6', '4', '2','2016-08-04','2016-08-05','1');
    INSERT INTO Orders VALUES ('7', '3', '1','2016-08-04','2016-08-04','1');

    INSERT INTO OrderDetails VALUES ('1','1','2');
    INSERT INTO OrderDetails VALUES ('4','1','1');
    INSERT INTO OrderDetails VALUES ('6','2','2');
    INSERT INTO OrderDetails VALUES ('7','2','3');
    INSERT INTO OrderDetails VALUES ('5','3','1');
    INSERT INTO OrderDetails VALUES ('3','4','2');
    INSERT INTO OrderDetails VALUES ('4','4','1');
    INSERT INTO OrderDetails VALUES ('7','4','1');
    INSERT INTO OrderDetails VALUES ('1','5','1');
    INSERT INTO OrderDetails VALUES ('1','6','2');
    INSERT INTO OrderDetails VALUES ('1','7','1');

