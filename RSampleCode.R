#!/usr/bin/env Rscript
# Downloaded all the files from HDFS. Just analysing one file in R due to RAM constraints

setwd("C:/Users/pdesh/Downloads/hdfs/data/AIMIA/PROCESSED")
df1 = read.csv("part-00000.csv")

show(df1)

library(dplyr)


# Average temp by country, year , month - just taking averages for now. explore median etc later

dfTempAvgByCountryYYMM = df1 %>% 
    group_by(COUNTRY, YEAR, MONTH) %>% 
    summarise(mean(TMAX, na.rm = TRUE),  mean(TMIN, na.rm = TRUE))


# Average temp by country, year - just taking averages for now. explore median etc later

dfTempAvgByCountryYY = df1 %>% 
    group_by(COUNTRY, YEAR ) %>% 
    summarise(mean(TMAX, na.rm = TRUE),  mean(TMIN, na.rm = TRUE))



library(data.table)


# rename dataframe columns
nms <- c("COUNTRY", "YEAR", "AVG_MAX_TEMP", "AVG_MIN_TEMP")
setnames(dfTempAvgByCountryYY , nms)



# use ggplot2 to plot the graph


ggplot(dfTempAvgByCountryYY,aes(x =COUNTRY,y = AVG_MAX_TEMP, colour = YEAR)) + 
  geom_point() +
  geom_smooth(colour = "red",size = 1) +
 scale_y_continuous(limits = c(200,300), breaks = seq(200,300,200))