DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    AddedDate DATE
);

INSERT INTO Products (ProductID, ProductName, Category, Price, Stock, AddedDate) VALUES
(1, 'Laptop Alpha',         'Computers',   75000.00,  50, '2023-01-10'),
(2, 'Smartphone X',         'Mobiles',     32000.00, 120, '2023-04-15'),
(3, 'Tablet Z',             'Tablets',     22000.00,  80, '2023-05-20'),
(4, 'Laptop Beta',          'Computers',   88000.00,  40, '2023-02-18'),
(5, 'Smartwatch Series 3',  'Wearables',   12000.00, 200, '2023-03-10'),
(6, 'Headphones Pro',       'Accessories',  8000.00, 150, '2023-01-25'),
(7, 'Camera Ultra',         'Cameras',     44000.00,  60, '2023-05-05'),
(8, 'Tablet Y',             'Tablets',     25000.00,  70, '2023-03-27'),
(9, 'Smartphone Y',         'Mobiles',     41000.00,  90, '2023-04-05'),
(10,'Laptop Gamma',         'Computers',   65000.00,  55, '2023-06-12');

SELECT * FROM Products
WHERE (Category = 'Computers' AND Price BETWEEN 70000 AND 90000)
   OR ProductName LIKE 'Smart%'
ORDER BY Price DESC;

SELECT ProductID, ProductName, Price
FROM Products
WHERE Category = 'Tablets'
  OR (Stock BETWEEN 50 AND 80 AND ProductName LIKE '%Pro%')
ORDER BY AddedDate ASC;