## TYPES OF DATA ANALYTICS
<ul>
    <li>Descriptive analysis </li>
    <li>Diagnostic analysis </li>
    <li>Predictive analysis </li>
    <li>Prescriptive analysis </li>

</ul>

## Descriptive Anaysis:

<p>
Descriptive analysis's job is just like the name says. It describes the data , means what happen. It does not exaplain why it happen or what sould we do. It just says what happen by examining the data. like sales trend in last two years. we dont explain why this happednd or what should we do. it just shows what happend
</p>

## Diagnostic analysis:

<p>
Diagnostic analysis is also just like the name . it finds the why in the data. for example last two years sales trend in one month sales dropped. so to find why this happend is the part of diagnostic analysis. maybe the product price inceased or many be quality in the product. which is the diagnosed data.
</p>

## Predictive analysis

predictive analysis predict data based on the previous data. Like machine learning , Deep Learning. Like KNN,RF,Linear Regresssion

## Prescriptive analysis

what we should fo is the prat if the Prescriptive analysis. for example you buy a product from amazon . so beased on the purchage data amazon recommend some product . this is prescriptive analysis. recommenation os a part of prescriptive analysis.



## Logistic optimization/Route Optimization
    pass

## Customer Segmentation
<p> Customer Segmentation is the process of dividing a company's customer into groups based on common charactistics so companies can market to each group effectively and appropriately. A company can segment their customer and then give different advertisement to different segment/Group of the customer</p>


## Price Elasticity
    pass


## Data Type:
Data is basicall 2 types
1) Qualitative data
  What is that:  You cant count the data like  group name, Job title etc. you can't apply math on it
  Qualitative data are 2 types
  1) nominal : it represent ategories but no inherit order. Like Science group, Commerce groip, or arts group. it has not order not any of them like supirior than other.
  
  2) Odinal: ordinal data you can order. Like in a resturant you get the rating good, bad ,average. so you can order them . you can say good is better than average than bad.


2) Quantitative data
   what is that : Quantitative data is a kind of data that you can measure. apply math or statistics on that data. Like numbres or decimal numbers.

   quantitative data is Basically 2 types:
    1) Discrite Data: it cant be fraction like number of product. number of people. it cant be fraction 
   
    2) Continoues Data : It can be fraction like amount of sales , distance measure like 100.10 taka or 6.2 km



## Structure Data:
    Data stored in a specfic format. Like excel or relational database

## Semistructure Data:
    Not fully structured there is some structure but not all of them. Like Email. You can find a structure in emai like subject , to ,from, body it the data inside them is unstructured

## Unstructured data:
    Data which has no structure. Like Audio, Video or photo/image etc. not structure,text files.you can not save the data in a tabular data.

## Data Collection:
    Data can be come from company app,
    1) user generated
    2) User behaviour
    3) Application logs
    4) Survery
    5) web scraping

## Data Warehousing:
    what is data warehousing:
    Data warehousing is a process and technology used to collect,store, manage and organize large amount of data from various sourec within an organization. Its primary purpose is to provide a centralized repository for data that can be used for reporting analysis and decision-making.



## Architecture of data warehouse
    1) data source
      data source can be externam data like 
      social media data, 
      internal daa like company database,
      operational data Like realtime data based on current activity
      or flat file like app log entry
    2) data staging:
        1) Extract (you have to first extract the data from the source)
        2) Transfrom (Then you need to transfrom the baed on the need like data preprocessing ,for example data cleaning remove duplicae, remove bad data, or remove null data ,create calculated cplu based on the riginal column,)
        
        3) Load: after the transform you save the preprocessed data some where maybe export as a excel file,or csv or in a relational database . this is call load data.
      example



      -----------------------------------------------------------------------------------

# Extract
import pandas as pd
source_data = pd.read_csv('sales_data.csv')

# Transform
# Clean data by removing duplicates and handling missing values
cleaned_data = source_data.drop_duplicates().fillna(0)

# Calculate total sales and average order value
cleaned_data['Total Sales'] = cleaned_data['Quantity'] * cleaned_data['Price']
cleaned_data['Average Order Value'] = cleaned_data.groupby('Order ID')['Total Sales'].transform('mean')

# Load
# Load the transformed data into a data warehouse or database
cleaned_data.to_sql('sales_data', connection, if_exists='replace')

      ----------------------------------------------------------------------------


    3) Data Warehouse : After the etl process from the data source . or we called after the staging, data is stored in a central repository which is called data warehouse. it organize the data in Relational . it also has metadata repo which holds the source and attribute of the data.
    
    4) Data marts: subject oriedted database which actually is a subset of the warehouse data
    5) data analytics: after breaking the data warehouse into small data marts then come data analytics, data mning and reporting
    6) presentation:
        presentation means:
        -> analytical reports 
        -> interactive reports
        -> static reports 


    BASED ON THAT DATA WAREHOUSECAN BE 3 TYPES:
 1)  ENTERPRISE DATA WAREHOUSE / CENTRALIZED DATA WAREHOUSE (EDW)
 2)  OPERATIONAL DATA WAREHOUSE / REALTIME DATA WAREHOUSE/TEMPORARY DATA WAREHOUSE BECAUSE YOU NEED A ENTERPRISE DATA WARE HOUSE AS A BACKEND TO CONTINOUSLY SAVETHE DATA (ODW)
 3)  DATA MART/ SUBSET OF THE DATA WAREHOUSE/ SMALLER PORITON OF THE DATA WAREHOUSE / SUBJECT ORIEDTED LIKE IF A COMPANY HAS MULTIPLE SECTION OF BUSINESS THEN IT CAN BREAK IT IN A SUBSET OF THE DATA. WHICH IS CALLED DATA MART