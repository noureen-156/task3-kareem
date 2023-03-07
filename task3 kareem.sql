CREATE DATABASE market;
 
CREATE TABLE Products(
      ProductID INT NOT NULL,
      ProductName varchar(255) NOT NULL,
       price DECIMAL(10,2) DEFAULT 0.00,
      CONSTRAINT PK_product PRIMARY KEY (productID)
);
    
CREATE TABLE Orders(
     OrderID INT NOT NULL,
     OrderName varchar(255) NOT NULL,
     OrderNumber INT NOT NULL,
    CONSTRAINT PK_product PRIMARY KEY (OrderID)
    );
    CREATE TABLE persons(
    ID INT NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Adress varchar(255),
    CONSTRAINT PK_PERSON PRIMARY KEY ( ID,LASTNAME)
 );
 ALTER TABLE orders
ADD FOREIGN KEY ORDERS( orderID)  REFERENCES persons(ID);
ALTER TABLE products
ADD FOREIGN KEY products(prouductID) REFERENCES orders (orderID);