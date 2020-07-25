plot1 <- function(mydata) {
  
  png(file="plot1.png", width = 480, height = 480)
  with(mydata, hist(Global_active_power, col = "red", main = "Global Active Power", 
                    xlab = "Global Active Power kilowatts", ylab = "Frequency"))
  dev.off()
}