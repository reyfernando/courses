Introduction

Storms and other severe weather events can cause both public health 
and economic problems for communities and municipalities. 
Many severe events can result in fatalities, injuries, and property damage, 
and preventing such outcomes to the extent possible is a key concern.

This project involves exploring the U.S. National Oceanic and Atmospheric Administrations 
(NOAA) storm database. This database tracks characteristics of major storms and weather 
events in the United States, including when and where they occur, as well as estimates 
of any fatalities, injuries, and property damage.


Data

The data for this assignment come in the form of a comma-separated-value file compressed via the bzip2 algorithm to reduce its size. You can download the file from the course web site:

Storm Data [47Mb]
There is also some documentation of the database available. Here you will find how some of the variables are constructed/defined.

National Weather Service Storm Data Documentation
National Climatic Data Center Storm Events FAQ
The events in the database start in the year 1950 and end in November 2011. In the earlier years of the database there are generally fewer events recorded, most likely due to a lack of good records. More recent years should be considered more complete.

Hypothesis 1: Severe Events result in fatalities, injuries and property damage?
capture severe weather events and correlate with neg events.
Hypothesis 2: Preventing such outcomes is possible?
Identify preventing campaings prior to severe weather storms
and compare number of fatalities from subset vs not prevented storms


getwd()
setwd("./05_ReproducibleResearch/")

#source("./storm_script.R")
## Download file
fileUrl <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
download.file(fileUrl,destfile="./data/StormData.csv.bz2")
list.files("./data")
dateDownloaded <- date()
dateDownloaded
## Read data and import CVS
dt <- read.csv("./data/StormData.csv.bz2")

#Data Processing

names(dt) 
head(dt)
dim(dt)
str(dt)



dt2<- cbind.data.frame(dt$BGN_DATE,dt$EVTYPE,dt$FATALITIES,dt$INJURIES,dt$PROPDMG,dt$PROPDMGEXP) 

dt2
aggregate(BGN_DATE,EVTYPE, FATALITIES, INJURIES)

install.packages("lubridate")
require(lubridate)
?lubridate
> month(date1)
[1] 3
> year(date1)
[1] 2012
> year(betterDatesTemp)

help(as.Date)
dt$BGN_DATE
betterDates <- as.Date(dt$BGN_DATE,format = "%m/%d/%y")
betterDatesTemp <-  as.Date(betterDates,format = "%y")



aggregate(cbind(EVTYPE,FATALITIES,INJURIES)~BGN_DATE, data = dt, sum )

# Analysis

##Analysis One
Across the United States, which types of events (as indicated in the 𝙴𝚅𝚃𝚈𝙿𝙴 variable)iare most 
armful with respect to population health?
Across
##Analysis Two
 the United States, which types of events have the greatest economic consequences?
Consid



er writing your report as if it were to be read by a government or municipal manager who mi
ght be responsible for preparing for severe weather events and will need to prioritize resources for d
fferent types of events. However, there is no need to make any specific recommendations in your r
eport.

#Results



