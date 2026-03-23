## ETL Decisions

#### **Decision 1 — Standardizing Date Formats**



##### Problem:

The dataset consists of multiple date formats such as 29/08/2023, 12-12-2023, and 2023-02-05. These inconsistencies would make time-based analysis difficult and could cause errors when loading data into the warehouse. Also, it is not ideal for sorting.



###### Resolution:

Converted all Dates into a standard ISO format (YYYY-MM-DD). The cleaned values were then loaded into the **dim\_date** **table** with attributes such as year, month, month\_name and date to enable time-based analytics.

#### 

#### **Decision 2 — Normalizing Category Names**



##### Problem:

The dataset contains inconsistent category values such as variations in Casing like, electronics, Electronics, Grocery, and Groceries. This will lead to incorrect aggregations when performing category-level analysis as the same would be treated as different groups.

##### 

##### Resolution:

Standardizing all labels: Electronics, Clothing, and Groceries. This ensures accurate grouping when generating reports.



#### **Decision 3 — Calculating Total Revenue Metric**



##### Problem:

The dataset did not contain a direct revenue field, only units\_sold and unit\_price which attracts repeated calculation in queries such as total sales or store performance.



##### Resolution:

Calculated during the ETL process using the formula:



revenue = units\_sold × unit\_price



The revenue value was stored in the **fact\_sales table** to simplify queries and improve reporting performance.



Therefore, all these transformations ensures data consistency, better query performance and accurate business insights.

