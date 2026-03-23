show databases;
use part_3;
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    year INT,
    month INT,
    month_name VARCHAR(20)
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    units_sold INT,
    unit_price DECIMAL(10,2),
    revenue DECIMAL(12,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

INSERT INTO dim_date VALUES
(1,'2023-01-15',2023,1,'January'),
(2,'2023-02-05',2023,2,'February'),
(3,'2023-02-20',2023,2,'February'),
(4,'2023-03-31',2023,3,'March'),
(5,'2023-08-09',2023,8,'August'),
(6,'2023-08-15',2023,8,'August'),
(7,'2023-08-29',2023,8,'August'),
(8,'2023-10-26',2023,10,'October'),
(9,'2023-12-08',2023,12,'December'),
(10,'2023-12-12',2023,12,'December');

INSERT INTO dim_store VALUES
(1,'Chennai Anna','Chennai'),
(2,'Delhi South','Delhi'),
(3,'Mumbai Central','Mumbai');

INSERT INTO dim_product VALUES
(1,'Smart TV','Electronics'),
(2,'Laptop','Electronics'),
(3,'T-Shirt','Clothing'),
(4,'Rice Pack','Groceries'),
(5,'Headphones','Electronics');

INSERT INTO fact_sales VALUES
(1,7,1,1,3,49262.78,147788.34),
(2,10,1,2,11,23226.12,255487.32),
(3,2,1,1,20,48703.39,974067.80),
(4,3,2,3,14,23226.12,325165.68),
(5,1,1,2,10,58851.01,588510.10),
(6,5,3,4,8,1200.50,9604.00),
(7,6,3,3,6,1800.00,10800.00),
(8,8,2,5,9,4500.00,40500.00),
(9,9,1,4,15,1300.00,19500.00),
(10,4,2,2,5,54000.00,270000.00);
