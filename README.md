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
   
     a.  PersonName(Name of the athlete)
   
     b.  Country(The country represented by the athlete)
   
     c.  Discipline(Rowing, Archery, etc.)

2. Coaches.csv:

   Columns:
   
     a.  Name(Name of the coach)
   
     b.  Country(The country represented by the coach)
   
     c.  Discipline(Rowing, Archery, etc.)

     d.  Event(Men, Women, Duet, Team etc.)

3. EntriesGender.csv:

   Columns:

     a.  Discipline(Rowing, Archery, etc.)
   
     b.  Female(Number of females in the respective discipline)
   
     c.  Male(Number of Males in the respective discipline)

     d.  Total

4. Medals.csv

   Columns:

     a.  Rank
   
     b.  Team/Country
   
     c.  Gold(#of gold medals won)

     d.  Silver(#of silver medals won)

     e.  Bronze(#of bronze medals won)

     f.  Total(#of total medals won)

     g.  Rank by Total


5. Teams.csv

   Columns:

     a.  TeamName
   
     b.  Discipline
   
     c.  Country

     d.  Event




     
   






