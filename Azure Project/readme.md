### Project: End-to-End E-commerce Data Platform on Azure

This repository contains an end-to-end implementation of a modern data platform on Microsoft Azure, designed to process, analyze, and serve the Olist Brazilian E-commerce dataset. The project follows the best-practice Medallion Architecture, ensuring data is systematically curated through Bronze (raw), Silver (cleansed), and Gold (aggregated) layers.

#### Architectural Overview

*   **Data Lake:** Azure Data Lake Storage (ADLS) Gen2 serves as the central storage for all three layers of the Medallion Architecture, providing a scalable and secure foundation.
    
*   **Ingestion Framework:** Azure Data Factory (ADF) is used to build robust and parameterized ingestion pipelines. This includes handling initial bulk loads and simulating real-time data streams into the Bronze layer.
    
*   **Processing Engine:** An Azure Databricks cluster is configured and connected to ADLS Gen2. All major transformations are performed using PySpark, which includes:
    
    *   Schema enforcement and data type correction.
        
    *   Data cleaning (handling nulls, duplicates).
        
    *   Joining multiple Olist CSV files into cohesive datasets.
        
    *   Data enrichment by integrating and looking up data from an external MongoDB database.
        
    *   The processed and validated data is then written to the Silver layer in a query-optimized format (e.g., Delta Lake or Parquet).
        
*   **Analytical Warehouse:** Azure Synapse Analytics provides the final analytics and serving layer. It connects directly to the data lake, allowing for high-performance querying on the Silver layer data. Workflows within Synapse are used to run `CETAS` queries that perform final aggregations and create the business-focused tables in the Gold layer, ready for consumption by BI tools like Tableau.
    

#### Key Technologies and Concepts Demonstrated:

*   **Cloud Infrastructure:** Azure (ADLS Gen2, Data Factory, Databricks, Synapse Analytics)
    
*   **Big Data Processing:** Apache Spark
    
*   **Data Architecture:** Medallion Lakehouse (Bronze, Silver, Gold)
    
*   **Data Orchestration:** Parameterized pipeline execution in ADF
    
*   **Data Integration:** Joining relational data and enriching from a NoSQL source (MongoDB)
    
*   **Cloud Data Warehousing:** Serverless SQL pools and `CETAS` operations in Synapse Analytics
