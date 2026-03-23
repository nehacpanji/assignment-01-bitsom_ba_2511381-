### ***## Storage Systems***



**The architecture uses multiple specialised storage systems to support the hospital's four goals efficiently. The transactional healthcare data such as patient records, treatments, prescription, notes of the doctor are stored in Relational Database. This database supports structed medical data with strong consistency and ACID transactions which are critical for healthcare systems where accuracy and reliability are essential.**



**For streaming ICU monitoring data such as heart rate, oxygen levels, BP level, a time-series based database is used. Time series databases are optimised for storing large volumes of timestamped sensor data anf allows efficient querying of trends, anomalies and historical patient vitals.**



**For management reporting and machine learning analytics, a data warehouse is used. The data warehouse stores cleans and aggregates historical data from operational systems using an ETL pipeline. This enables faster analytical queries such as department-wise cost analysis, bed occupancy rates, and monthly performance metrics as mentioned in goals.**



**To enable doctors to query patient history in natural language, a large language model (LLM) interface is connected to the structured patient database. The LLM translates natural language questions into structured queries that retrieve relevant patient information from the database.**



**Finally, the predictive readmission model is trained using historical treatment data stored in the data warehouse.The Machine learning frameworks assess these datas and predict patient readmission risks and support proactive healthcare decisions.**



#### ***#OLTP vs OLAP Boundary***



**The OLTP system consists of the operational healthcare databases that store realtime transactional data such as patient admissions, treatment records, prescirptions and doctor's notes.**

**These systems prioritise high reliability, consistency and faster write options as hospital staff continuously update patient information.**



**The OLAP system begins at the ETL pipeline stage. Data from the OTLP systems is periodically extracted , cleaned and transformed before being loaded into the data warehouse. The separaton ensures the analytical workloads such as reporting and ML do not impact the performance of the operational hospital systems.**



**In this architecture, OLTP databases handle daily hospital operations, while the data warehouse supports analytical queries, AI training \& management reporting.This clear boundary ensures both operational efficiency and analytical scalability.**





##### ***#Trade-offs***



**One significant trade off in this architecture is the complexity introduced by using multiple specialised storage systems. While each system is optimised for a specific workload (transactional data, streaming vitals, analytics), managing multiple databases increases operational overhead and integration complexity.**



**To mitigate this challenge, a centralized data pipeline can be used to manage data ingestion, transformations, and synchronization between systems. Additionally, standardized APIs and data schemas can ensure smooth communication between the transactional systems, streaming platforms, and analytics layers.**



**Another mitigation strategy is implementing strong monitoring and data governance policies to maintain data consistency and reliability across the entire architecture. Despite the added complexity, this multi-system design significantly improves performance, scalability, and analytical capabilities, which are essential for a modern AI-powered healthcare platform.**

