create database Online_Shopping_Application;
use Online_Shopping_Application;

-- CUSTOMER TABLE
create table Customers(
Customer_id int primary key,
Customer_name varchar(50),
Email_id varchar(50),
Phone_no varchar(10),
City varchar(50),
State varchar(50),
Pincode varchar(50),
Account_status varchar(50)
);

-- Data for customer table 
insert into Customers(Customer_id,Customer_name,Email_id,Phone_no,City,State,Pincode,Account_status)
values
(101,'Mayuu','mayuu@gmail.com','8456998579','Bhopal','MP','462022','Active'),
(102,'Aryan','aryan@gmail.com','9569878579','Bangalore','KA','560001','Active'),
(103,'Abhishek','abhishek@gmail.com','9569545579','Indore','MP','452001','Inactive'),
(104,'Akshat','akshat@gmail.com','8469558579','Bhopal','MP','462022','Active'),
(105,'Som','som@gmail.com','9876543214','Pune','MH','411001','Active'),
(106,'Anjali','anjali@gmail.com','9876543215','Jaipur','RJ','302001','Active'),
(107,'Vikas','vikas@gmail.com','9876543216','Noida','UP','201301','Active'),
(108,'Simran','simran@gmail.com','9876543217','Chandigarh','PB','160001','Active'),
(109,'Karan','karan@gmail.com','9876543218','Ludhiana','PB','141001','Inactive'),
(110,'Sneha','sneha@gmail.com','9876543219','Nagpur','MH','440001','Active'),
(111,'Mohit','mohit@gmail.com','9876543220','Meerut','UP','250001','Active'),
(112,'Riya','riya@gmail.com','9876543221','Gurgaon','HR','122001','Active'),
(113,'Suresh','suresh@gmail.com','9876543222','Chennai','TN','600001','Active'),
(114,'Nidhi','nidhi@gmail.com','9876543223','Kanpur','UP','208001','Inactive'),
(115,'Deepak','deepak@gmail.com','9876543224','Patna','BR','800001','Active'),
(116,'Kavya','kavya@gmail.com','9876543225','Kochi','KL','682001','Active'),
(117,'Arjun','arjun@gmail.com','9876543226','Hyderabad','TS','500001','Active'),
(118,'Meenal','meenal@gmail.com','9876543227','Udaipur','RJ','313001','Active'),
(119,'Tarun','tarun@gmail.com','9876543228','Amritsar','PB','143001','Inactive'),
(120,'Isha','isha@gmail.com','9876543229','Indore','MP','452010','Active');

select*from Customers; 

-- CATEGORY TABLE
create table Categories(
Category_id int primary key,
Category_name varchar(50),
Is_active boolean 
);

-- data for categories table
insert into Categories(Category_id,Category_name,Is_active)
values
(201,'Electronics',1),
(202,'Fashion',1),
(203,'Home',1),
(204,'Beauty',1),
(205,'Sports',1),
(206,'Groceries',1),
(207,'Toys',1),
(208,'Stationery',1);
 
 
 select * from Categories; 
 
-- PRODUCTS TABLE
create table Products(
Product_id int primary key,
Product_name varchar(50),
category_id int,
Product_price decimal(10,2),
Stock_quantity int,
Product_brand varchar(50),
Product_status varchar(50),
foreign key (category_id) references Categories(category_id)
);

-- data for Product table
insert into Products (Product_id,Product_name,category_id,Product_price,Stock_quantity,Product_brand,Product_status)
values
(1,'iPhone 14',201,70000,5,'Apple','Available'),
(2,'Samsung Mobile',201,65000,6,'Samsung','Available'),
(3,'Dell Laptop',201,55000,4,'Dell','Available'),
(4,'Bluetooth Speaker',201,3500,10,'JBL','Available'),
(5,'Nike Shoes',202,4500,8,'Nike','Available'),
(6,'Adidas Sneakers',202,4200,7,'Adidas','Available'),
(7,'Wooden Table',203,12000,0,'Godrej','Unavailable'),
(8,'Office Chair',203,8000,3,'Godrej','Available'),
(9,'Microwave Oven',203,15000,0,'LG','Unavailable'),
(10,'Face Cream',204,800,0,'Himalaya','Unavailable'),
(11,'Hair Dryer',204,2200,4,'Philips','Available'),
(12,'Cricket Bat',205,3000,0,'SG','Unavailable'),
(13,'Yoga Mat',205,1200,10,'Puma','Available'),
(14,'Grocery Combo',206,1500,20,'Fortune','Available'),
(15,'Cooking Oil 5L',206,900,0,'Fortune','Unavailable'),
(16,'Toy Car',207,700,12,'HotWheels','Available'),
(17,'RC Car',207,2500,5,'ToyZone','Available'),
(18,'Notebook',208,100,50,'Classmate','Available'),
(19,'Pen Set',208,200,30,'Cello','Available'),
(20,'Office File',208,350,0,'Solo','Unavailable');

select * from Products;

-- ORDERS TABLE
create table Orders(
Order_id int primary key,
Customer_id int,
Order_date date,
Total_amount decimal(10,2),
Order_status varchar(20),
Payment_status varchar(20),
foreign key (Customer_id) references Customers(Customer_id)
);

insert into Orders(Order_id,Customer_id,Order_date,Total_amount,Order_status,Payment_status)
values
(1001,101,'2025-01-01',210000,'Delivered','Paid'),
(1002,102,'2025-01-02',130000,'Delivered','Paid'),
(1003,103,'2025-01-03',165000,'Delivered','Paid'),
(1004,104,'2025-01-04',4500,'Cancelled','Failed'),
(1005,105,'2025-01-05',24000,'Delivered','Paid'),
(1006,106,'2025-01-06',16000,'Delivered','Paid'),
(1007,107,'2025-01-07',30000,'Delivered','Paid'),
(1008,108,'2025-01-08',9000,'Delivered','Paid'),
(1009,109,'2025-01-09',800,'Cancelled','Failed'),
(1010,110,'2025-01-10',6600,'Delivered','Paid'),
(1011,111,'2025-01-11',10500,'Delivered','Paid'),
(1012,112,'2025-01-12',300,'Delivered','Paid'),
(1013,113,'2025-01-13',2400,'Cancelled','Failed'),
(1014,114,'2025-01-14',7500,'Shipped','Paid'),
(1015,115,'2025-01-15',4500,'Delivered','Paid'),
(1016,116,'2025-01-16',2700,'Delivered','Paid'),
(1017,117,'2025-01-17',1400,'Cancelled','Failed'),
(1018,118,'2025-01-18',600,'Delivered','Paid'),
(1019,119,'2025-01-19',1050,'Delivered','Paid'),
(1020,120,'2025-01-20',8400,'Delivered','Paid');

select*from Orders;


-- Order_items table
create table Order_Items(
Order_item_id int primary key,
Order_id int,
Product_id int,
Quantity int,
Price decimal(10,2),
foreign key (Order_id) references Orders(Order_id),
foreign key (Product_id) references Products(Product_id)
);

insert into Order_items(Order_item_id,Order_id,Product_id,Quantity,Price)
values
(1,1001,1,3,210000),
(2,1002,2,2,130000),
(3,1003,3,3,165000),
(4,1004,5,1,4500),
(5,1005,7,2,24000),
(6,1006,8,2,16000),
(7,1007,9,2,30000),
(8,1008,12,3,9000),
(9,1009,10,1,800),
(10,1010,11,3,6600),
(11,1011,4,3,10500),
(12,1012,18,3,300),
(13,1013,13,2,2400),
(14,1014,17,3,7500),
(15,1015,14,3,4500),
(16,1016,15,3,2700),
(17,1017,16,2,1400),
(18,1018,19,3,600),
(19,1019,20,3,1050),
(20,1020,6,2,8400);

select * from Order_items;

-- Reviews table 
create table Reviews(
Review_id int primary key,
Customer_id int,
Product_id int,
Rating int,
Review_text varchar(200),
Review_date date,
foreign key (Customer_id) references Customers(Customer_id),
foreign key (Product_id) references Products(Product_id)
);

insert into Reviews(Review_id,Customer_id,Product_id,Rating,Review_text,Review_date)
values
(401,101,1,5,'Excellent','2025-01-05'),
(402,102,2,4,'Very good','2025-01-06'),
(403,103,3,5,'Worth buying','2025-01-07'),
(404,104,5,4,'Comfortable','2025-01-08'),
(405,105,7,3,'Average','2025-01-09'),
(406,106,8,5,'Nice chair','2025-01-10'),
(407,107,9,4,'Good','2025-01-11'),
(408,108,12,5,'Loved it','2025-01-12'),
(409,109,10,3,'Okay','2025-01-13'),
(410,110,11,4,'Useful','2025-01-14'),
(411,111,4,5,'Great sound','2025-01-15'),
(412,112,18,4,'Good quality','2025-01-16'),
(413,113,13,5,'Perfect','2025-01-17'),
(414,114,17,4,'Nice toy','2025-01-18'),
(415,115,14,5,'Best','2025-01-19'),
(416,116,15,3,'Average','2025-01-20'),
(417,117,16,5,'Kids love it','2025-01-21'),
(418,118,19,4,'Smooth','2025-01-22'),
(419,119,20,4,'Useful','2025-01-23'),
(420,120,6,4,'Comfortable','2025-01-24');

select*from Reviews;

-- Shipping table
create table Shipping(
Shipping_id int primary key,
Order_id int,
Shipping_address varchar(50),
Shipping_date date,
Delivery_date date,
Shipping_status varchar(20),
foreign key (Order_id) references Orders(Order_id)
);

insert into Shipping(Shipping_id,Order_id,Shipping_address,Shipping_date,Delivery_date,Shipping_status)
values
(701,1001,'Bhopal MP','2025-01-02','2025-01-05','Delivered'),
(702,1002,'Bangalore KA','2025-01-03','2025-01-06','Delivered'),
(703,1003,'Indore MP','2025-01-04','2025-01-07','Delivered'),
(704,1004,'Bhopal MP','2025-01-05','2025-01-06','Cancelled'),
(705,1005,'Pune MH','2025-01-06','2025-01-09','Delivered'),
(706,1006,'Jaipur RJ','2025-01-07','2025-01-10','Delivered'),
(707,1007,'Noida UP','2025-01-08','2025-01-11','Delivered'),
(708,1008,'Chandigarh PB','2025-01-09','2025-01-12','Delivered'),
(709,1009,'Ludhiana PB','2025-01-10','2025-01-11','Cancelled'),
(710,1010,'Nagpur MH','2025-01-11','2025-01-14','Delivered'),
(711,1011,'Meerut UP','2025-01-12','2025-01-15','Delivered'),
(712,1012,'Gurgaon HR','2025-01-13','2025-01-16','Delivered'),
(713,1013,'Chennai TN','2025-01-14','2025-01-15','Cancelled'),
(714,1014,'Kanpur UP','2025-01-15','2025-01-18','Shipped'),
(715,1015,'Patna BR','2025-01-16','2025-01-19','Delivered'),
(716,1016,'Kochi KL','2025-01-17','2025-01-20','Delivered'),
(717,1017,'Hyderabad TS','2025-01-18','2025-01-19','Cancelled'),
(718,1018,'Udaipur RJ','2025-01-19','2025-01-22','Delivered'),
(719,1019,'Amritsar PB','2025-01-20','2025-01-23','Delivered'),
(720,1020,'Indore MP','2025-01-21','2025-01-24','Delivered');


#Insights

-- 1 Total registered customers
SELECT COUNT(*) AS total_customers
FROM Customers;

-- 2 Active vs Inactive Customers
SELECT Account_status, COUNT(*) AS total_users
FROM Customers
GROUP BY Account_status;

-- 3 Order Status Breakdown
SELECT Order_status, COUNT(*) AS total_orders
FROM Orders
GROUP BY Order_status;

-- 4. Pending / Shipped Orders
SELECT COUNT(*) AS pending_orders
FROM Orders
WHERE Order_status = 'Shipped';

-- 5. how many payments failed cause of payment failure
SELECT COUNT(*) AS failed_payments
FROM Orders
WHERE Payment_status = 'Failed';

-- 6. total revenue comes from delivered orders
SELECT SUM(Total_amount) AS total_revenue
FROM Orders
WHERE Order_status = 'Delivered';

-- 7. Average order values
SELECT AVG(Total_amount) AS avg_order_value
FROM Orders
WHERE Order_status = 'Delivered';

-- 8. how much revenue loss due to cancelled orders
SELECT SUM(Total_amount) AS revenue_loss
FROM Orders
WHERE Order_status = 'Cancelled';

-- 9 estimated business profit
SELECT 
SUM(Total_amount) - SUM(Total_amount * 0.70) AS business_profit
FROM Orders
WHERE Order_status = 'Delivered';

-- 10 Top 3 city sale has highest (city wise revenue)
SELECT c.City, SUM(o.Total_amount) AS city_revenue
FROM Customers c
JOIN Orders o ON c.Customer_id = o.Customer_id
WHERE o.Order_status = 'Delivered'
GROUP BY c.City
ORDER BY city_revenue DESC
LIMIT 3;

-- 11 most selling product (top 3)
SELECT p.Product_name, SUM(oi.Quantity) AS total_sold
FROM Order_Items oi
JOIN Products p ON oi.Product_id = p.Product_id
GROUP BY p.Product_name 
ORDER BY total_sold DESC
limit 3;

-- 12 out of stock products
SELECT Product_name
FROM Products
WHERE Stock_quantity = 0;

-- 13 low rated products needs improvements
SELECT p.Product_name, AVG(r.Rating) AS avg_rating
FROM Reviews r
JOIN Products p ON r.Product_id = p.Product_id
GROUP BY p.Product_name
HAVING AVG(r.Rating) <= 3;

-- 14 high price products sold >50000
SELECT p.Product_name, SUM(oi.Quantity) AS total_sold
FROM Order_Items oi
JOIN Products p ON oi.Product_id = p.Product_id
WHERE p.Product_price > 50000
GROUP BY p.Product_name;

-- 15 customers with cancelled orders 
SELECT c.Customer_name, COUNT(o.Order_id) AS cancelled_orders
FROM Customers c
JOIN Orders o ON c.Customer_id = o.Customer_id
WHERE o.Order_status = 'Cancelled'
GROUP BY c.Customer_name;

-- 16 High Demand but Out-of-Stock Products
SELECT p.Product_name, SUM(oi.Quantity) AS total_sold
FROM Order_Items oi
JOIN Products p ON oi.Product_id = p.Product_id
WHERE p.Stock_quantity = 0
GROUP BY p.Product_name;