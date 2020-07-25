plot2 <- function(mydata) {
  
  png(file="plot2.png", width = 480, height = 480)
  
  dt <- strptime(paste(mydata$Date, mydata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
  plot(dt, mydata$Global_active_power, type = "l", xlab = "",
                    ylab = "Global Active Power kilowatts")
  dev.off()
}