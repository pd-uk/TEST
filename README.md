# Engineering Test

This project is created as a solution for the Data Engineering Technical Test.


## Basics

Weather Data Analysis: 

1. Extract the required features i.e. data columns as proposed by Data Scientists
2. Create Partial Stats i.e. static views - one off activity to avoid recomputation each time
3. Generate Final Metrics and store the results into the HDFS/S3 so that Data Scientists can analyse the data further
4. Reporting using R ggplot/d3.js etc as needed


## Assumptions And Limitations
This is a batch mode processing framework
Small project and time constraint so code aesthetics, exception handling etc were ignored
PC RAM was limited hence all data could not be crunched 
The R code is created only to describe analysis

##Deliverables
1. Maven project export - Basic Spark code using Scala 
2. R Script - just to show how analysis can be done
3. Brief Description.docx - to show how the data pipeline can be developed
4. REPL SCRIPT TESTING - the Spark REPL code used for development

## Installation

To Run (This has been tested on a HDP/CDH cluster):

*  How to setup the environment to run the current program:
 *
 *
 *  1.	Upload all the *.gz files in HDFS and set appropriate (read only for Spark user ) permissions. 
 *      This is the argument(0) to spark submit job
 *      Also, create a HDFS location where the processed files i.e. static views will be stored.
 *      This is the argument(1) to spark submit job
 *
 *  2. mvn clean package to make a jar file
 *   
 *  3. Run the spark submit command: (Example command below):
 *
 *  spark-submit --master local[*]  --class "com.aimia.weather.WeatherMain" /home/users/pd/weatheranalysis-0.0.1-SNAPSHOT-jar-with-dependencies.jar  "hdfs://sandbox.hortonworks.com:8020/data/AIMIA/RAW/*"   "hdfs://sandbox.hortonworks.com:8020/data/AIMIA/PROCESSED/"
 *  
 *  4. This program can be extended to create more static views as required by data scientists

  
## Tools
Spark 1.6
Scala 2.10.5
Hortonworks Sandbox
R- ggplot2, dplyr etc.

  
## Tests

Describe and show how to run the tests with code examples.

## Contributors

Prasad Deshpande - Lead Big Data Consultant








