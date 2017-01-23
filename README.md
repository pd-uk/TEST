# Aimia Data Engineering Test

This small project is created as a solution for the AIMIA Data Engineering Technical Test.

## Basics

Weather Data Analysis: 

1. Extract the required features i.e. data columns as proposed by Data Scientists
2. Create Partial Stats i.e. static views - one off activity to avoid recomputation each time
3. Generate Final Metrics and store the results into the HDFS/S3 so that Data Scientists can analyse the data further
4. Reporting using R ggplot/d3.js etc as needed


## Assumptions
This is a batch mode processing framework

## Installation

To Run (This has been tested on a HDP/CDH cluster):

1. mvn clean package

2. Create the  HDFS folder structure and copy all the *.gz weather data files into the directory

3. Start spark streaming using
  spark-submit 
  
## Tests

Describe and show how to run the tests with code examples.

## Contributors

Prasad Deshpande - Lead Big Data Consultant








