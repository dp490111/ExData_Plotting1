#Create Plot 4
### Read data

setwd("U:/03 Professional Development/09 R Programming/03 Coursera/04 Exploratory Data Analysis/Week 1/exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

data1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

### Format date

datetime <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


### Generate graphs

png("plot4.png", width=480, height=480)
  
  par(mfrow = c(2, 2)) 


  ### Graph 1

  plot(datetime, data1$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)

  ### Graph 2
  
  plot(datetime, data1$Voltage, type="l", xlab="datetime", ylab="Voltage")

  ### Graph 3
  
  plot(datetime, data1$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
  lines(datetime, data1$Sub_metering_2, type="l", col="red")
  lines(datetime, data1$Sub_metering_3, type="l", col="blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

  ### Graph 4
  
  plot(datetime, data1$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
