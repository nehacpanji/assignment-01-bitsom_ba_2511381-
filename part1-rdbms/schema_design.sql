drop database if exists NehaPanji;
show databases;
create database if not exists NehaPanji;
Use NehaPanji;
show databases;

/* Creating Table called Customers*/
CREATE TABLE Customers ( 
	customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50)  NOT NULL
    );

/* Creating Table called Products*/

CREATE TABLE Products (
	product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

/* Creating Table called Sales*/

CREATE TABLE Sales (
	sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL,
    office_address VARCHAR(200) NOT NULL
);

/* Creating Table called Orders*/

CREATE TABLE Orders (
	order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    sales_rep_id VARCHAR(10) NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES Sales(sales_rep_id)
        
);

/* Creating Table called Order Items*/

CREATE TABLE Order_Items(
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)

);

/* Inserting Values into the created tables */

INSERT INTO Customers VALUES
('C001','Rahul Sharma','rahul@email.com','Mumbai'),
('C002','Priya Mehta','priya@email.com','Delhi'),
('C003','Amit Patel','amit@email.com','Bangalore'),
('C004','Neha Singh','neha@email.com','Pune'),
('C005','Arjun Gupta','arjun@email.com','Mumbai');

INSERT INTO Products VALUES
('P001','Laptop','Electronics',60000),
('P002','Headphones','Electronics',2000),
('P003','Mobile Phone','Electronics',25000),
('P004','Office Chair','Furniture',7000),
('P005','Smart Watch','Electronics',5000);

INSERT INTO Sales VALUES
('SR01','Deepak Joshi','deepak@company.com','Mumbai HQ, Nariman Point'),
('SR02','Anita Roy','anita@company.com','Delhi Office, Connaught Place'),
('SR03','Vikram Shah','vikram@company.com','South Zone, Bangalore'),
('SR04','Rohit Gupta','rohit@company.com','Pune Office'),
('SR05','Sneha Kapoor','sneha@company.com','Chennai Office');

INSERT INTO Orders (order_id, customer_id,sales_rep_id, order_date) VALUES 
('ORD1114', 'C001', 'SR01', '2023-08-06'),
('ORD1027', 'C002', 'SR02', '2023-11-02'),
('ORD1132', 'C003', 'SR03', '2023-03-07'),
('ORD1076', 'C004', 'SR04', '2023-05-16'),
('ORD1075', 'C005', 'SR05', '2023-04-18');

INSERT INTO Order_Items (order_id, product_id, quantity) VALUES
('ORD1114', 'P001', 1),
('ORD1027', 'P002', 2),
('ORD1132', 'P003', 4),
('ORD1076', 'P004', 3),
('ORD1075', 'P005', 5);

