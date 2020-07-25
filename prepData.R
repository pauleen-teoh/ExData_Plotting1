# Download data set
zip_file <- "Electric_power_consumption.zip"

# Checking if archieve already exists.
if (!file.exists(zip_filename)){
  file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(file_url, zip_file, method="curl")
} 

# Checking if folder exists
if (!file.exists(".\")) { 
  unzip(zip_file) 
}

library(sqldf)
consumption <- read.csv.sql(file="household_power_consumption.txt", 
                      sql = "select * from file where Date = '1/2/2007'
                      OR Date = '2/2/2007'", header = TRUE, sep = ";", 
                      eol = "\n")
                      
str(consumption)
# checking output
# 'data.frame':	2880 obs. of  9 variables:
# $ Date                 : chr  "1/2/2007" "1/2/2007" "1/2/2007" "1/2/2007" ...
# $ Time                 : chr  "00:00:00" "00:01:00" "00:02:00" "00:03:00" ...
# $ Global_active_power  : num  0.326 0.326 0.324 0.324 0.322 0.32 0.32 0.32 0.32 0.236 ...
# $ Global_reactive_power: num  0.128 0.13 0.132 0.134 0.13 0.126 0.126 0.126 0.128 0 ...
# $ Voltage              : num  243 243 244 244 243 ...
# $ Global_intensity     : num  1.4 1.4 1.4 1.4 1.4 1.4 1.4 1.4 1.4 1 ...
# $ Sub_metering_1       : num  0 0 0 0 0 0 0 0 0 0 ...
# $ Sub_metering_2       : num  0 0 0 0 0 0 0 0 0 0 ...
# $ Sub_metering_3       : num  0 0 0 0 0 0 0 0 0 0 ...

source("plot1.R")
plot1(consumption)

source("plot2.R")
plot2(consumption)

source("plot3.R")
plot3(consumption)

source("plot1.4")
plot4(consumption)
