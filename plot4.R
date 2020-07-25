plot4 <- function(mydata) {
  
  png(file="plot4.png", width = 480, height = 480)
  
  datetime <- strptime(paste(mydata$Date, mydata$Time, sep = " "), 
                       "%d/%m/%Y %H:%M:%S")
  
  # divide png file into 4 quadrants and set the margin
  par(mfrow = c(2,2), mar = c(4,4,4,2))
  
  # 1st graph
  plot(datetime, mydata$Global_active_power, type = "l", xlab = "",
       ylab = "Global Active Power")
  
  # 2nd graph
  with(mydata, plot(datetime, Voltage, type = "l"))
  
  # 3rd graph
  plot(datetime, mydata$Sub_metering_1, type = "l", xlab = "", 
       ylab = "Energy sub metering")
  points(datetime, mydata$Sub_metering_2, type = "l", col = "red")
  points(datetime, mydata$Sub_metering_3, type = "l", col = "blue")
  legend("topright", lty=1, lwd =2.5, col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  # 4th graph
  with(mydata, plot(datetime, Global_reactive_power, type = "l"))
  
  dev.off()
}