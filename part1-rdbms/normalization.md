\## Anomaly Analysis



An Insert Anomaly:

An Insert Anomaly occurs when we cannot insert data without adding unrelated data.



In the dataset, product information is stored together with order information. The columns involved are:



product\_id, product\_name, category, unit price



but the table also requires:

order\_id, customer\_id, sales\_rep\_id, order\_date



So we cannot add the product unless an order exists.



Example rows:

Row 1: ORD1027

product\_id: P001

product\_name: Laptop

category: Electronics



If the company wants to add another product(ex: tablet), they must create a fake order. This demonstrates insert anomaly caused by storing products and orders in the same table.





Update Anomaly:

Update Anomaly occurs when same data appears multiple times.



Example for data set:



Row 2:

sales\_rep\_id : SR01

sales\_rep\_name: Deepak Joshi

office\_address: Mumbai HQ, Nariman Point, Mumbai - 400021



Row 38:



sales\_rep\_id : SR01

sales\_rep\_name: Deepak Joshi

office\_address: Mumbai HQ, Nariman Pt, Mumbai - 400021



The same sales representative has slightly different office address. This shows data inconsistency which is an update anomaly. If the office address changes, multiple rws must be updated, and missing any one row will cause inconsistency.





Delete Anomaly:

A delete anomaly occurs when deleting a record unintentionally removes important information.

&#x20;Example in dataset:

Row 12:

order\_id: ORD1185

product\_id: P008

product\_name: Webcam



if this order is deleted, all the information about product P008 will disapper from the database, even though the product should still exist in the product catalog. This is a delete anomaly caused by storing product data inside the order table.





\## Normalization Justification



"Your manager argues that keeping everything in one table is simpler and normalization is over-engineering. Using specific examples from the dataset, defend or refute this position."



The data set demonstrates several problems from the above mentioned approach. For example, Sales representative info such as sales\_rep\_name, sales\_rep\_email and office\_address is repeated in every order handled by the representative. Also, the same representative (SR01 - Deepak Joshi) appears multiple times with slightly different office address ("Nariman Point" vs "Nariman Pt"). This inconsistency demonstrates an Update Anomaly.



The product info is also repeated across multiple rows. Fields such as product\_name, category and unit\_price appears in every order that contains that product. If the price of the product changes then, multiple rows must be updated. Missing one update will lead to inconsistency.



The dataset also shows delete anomalies. For instance, product P008 appears only once. If the order containing that product is deleted, the product info itself is lost form the database, even though the product should still exist in the catalog.



Insert anomalies are another issue. A new product cannot be inserted into the table unless a full order record is created, because order- related fields are required.



By normalising the schema into separate tables for Customers, Products, Sales Representatives, Orders and order items, redundancy is reduced and data integrity is preserved. Each entity is stored once and referenced through keys. Therefore, Normalization is not over-engineering but essential practice for maintaining accurate, scalable and consistent database systems.

