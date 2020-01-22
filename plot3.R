#Create plot3

### Read data

setwd("U:/03 Professional Development/09 R Programming/03 Coursera/04 Exploratory Data Analysis/Week 1/exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

data1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

### Format date

datetime <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


### Generate Plot

png("plot3.png", width=480, height=480)
plot(datetime, data1$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, data1$Sub_metering_2, type="l", col="red")
lines(datetime, data1$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
