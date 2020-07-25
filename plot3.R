plot3 <- function(mydata) {
  
  png(file="plot3.png", width = 480, height = 480)
  
  dt <- strptime(paste(mydata$Date, mydata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
  plot(dt, mydata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  points(dt, mydata$Sub_metering_2, type = "l", col = "red")
  points(dt, mydata$Sub_metering_3, type = "l", col = "blue")
  legend("topright", lty=1, lwd =2.5, col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  dev.off()
}