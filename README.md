# dbt Learning Project - Retail Analytics

This project is my implementation of dbt Mesh course which is available on [dbt Labs website](https://learn.getdbt.com/courses/dbt-mesh)
It's a hands-on dbt learning initiative that models retail data using modern analytics engineering best practices. 
Raw CSV data was uploaded into BigQuery in advance. Here it is transformed through clearly defined dbt layers: **sources**, **staging**, and **marts**.

The project emphasizes:
- Clean source declarations and staging models
- Star-schema-style marts with fact and dimension tables
- Natural keys where appropriate, surrogate keys only when needed
- dbt **model contracts** for governed, stable interfaces
- Column-level tests and relationship enforcement

The stack includes **BigQuery** as the warehouse and **dbt Cloud** for transformations.  
The project is intentionally iterative and experimental, serving as a sandbox for learning dbt features such as contracts, testing strategies, and model layering.

This repository is suitable as both a learning reference and a foundation for more advanced dbt workflows.
