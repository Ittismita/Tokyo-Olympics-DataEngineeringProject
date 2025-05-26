# Data-Engineering-Project-Guided
Olympic Data Analytics

Using Azure Cloud Services

### Understanding the Architecture
1. Data Source:
   Kaggle:

   https://www.kaggle.com/datasets/arjunprasadsarkhel/2021-olympics-in-tokyo?resource=download&select=Athletes.xlsx
3. Data Ingestion: Extracting and storing data at a location like,  
   ***Data Factory*** : Integration services, to create, schedule and manage a simple pipeline.
                 Hence, extracts data from data source and stores in ***Data Lake Storage***.
                 Simplifies ETL.
4. Data Lake Storage: Store structured and unstructured data.
                      Raw data is stored here after extraction.
                      Containers, file share, queue and table.
   In Azure > Storage accounts > Containers
6. Transformation: Apply transformations on data through coding using Apache Spark on ***Azure Databricks*** 
   environment.
7. ***Data Lake Storage*** : Store the transformed data.
8. Analytics: Using ***Azure Synapse Analytics***.
9. Dashboard: Final viz created using any of the services like Power BI, Tableau etc.

### About Dataset:
The dataset contains details of over 11,000 athletes, with 47 disciplines, along with 743 Teams taking part in the 2021(2020) Tokyo Olympics.

It contains the details of the Athletes, Coaches, Teams participating as well as the Entries by gender. It contains their names, countries represented, discipline, gender of competitors, name of the coaches and medals(gold, silver, bronze) won.

File: 
1. Athletes.csv:
   
   Columns:
     1. PersonName(Name of the athlete)
     2. Country(The country represented by the athlete)
     3. Discipline(Rowing, Archery, etc.)

3. Coaches.csv:

   Columns:
   
     1. Name(Name of the coach)
     2. Country(The country represented by the coach)  
     3. Discipline(Rowing, Archery, etc.)
     4. Event(Men, Women, Duet, Team etc.)

4. EntriesGender.csv:

   Columns:

     1.  Discipline(Rowing, Archery, etc.)  
     2.  Female(Number of females in the respective discipline)  
     3.  Male(Number of Males in the respective discipline)
     4.  Total

5. Medals.csv

   Columns:

     1.  Rank
     2.  Team/Country   
     3.  Gold(#of gold medals won)
     4.  Silver(#of silver medals won)
     5.  Bronze(#of bronze medals won)
     6.  Total(#of total medals won)
     7.  Rank by Total

6. Teams.csv

   Columns:
   
     1.  TeamName
     2.  Discipline
     3.  Country
     4.  Event

### Steps Taken:
1. Created a storage account - A resource group was created.
2. Created a container - stores data as an object.
            - Folders were created to store the raw data(used Data Factory for               the ingestion of data into raw data folder) and the transformed                data (used Azure Databricks).
3. Data ingestion using data factories :
            - Created a data factory workspace for the resource group.
            - After launching the workspace, created a pipeline for the                      entire data ingestion and storage process.
   
   Pipeline -
   Source(Github Repo){For each URL of the raw data -> created a linked service} -> Sink(Azure Data Lake storage Gen2) {A single linked service was used...OFC!}
4. Transforming data using databricks:
            - Created Azure Databricks workspace for the resource group.
            - For using Apache Spark - created compute.
            - Data factory was mounted onto the Databricks workspace - 
              connection was created between the both - created an app for 
              this.
   In the Notebook:
   1. Set up configs: created connection between database and ADLS
      ```
      configs = {"fs.azure.account.auth.type": "OAuth",
      "fs.azure.account.oauth.provider.type":                   
      "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider",
      "fs.azure.account.oauth2.client.id": "",
      "fs.azure.account.oauth2.client.secret": '',
      "fs.azure.account.oauth2.client.endpoint":          
      "https://login.microsoftonline.com/tenant_id/oauth2/token"}
      ```
   2. Went through the schema of each csv file.
   3. Applied necessary transformation like changing the data type in certain csv files like EntriesGender.
   4. Wrote/ saved the transformed datasets into the transformed data container.
  
5. Data Analysis using Azure Synapse Analytics
   
   
      
      
 


     
   






