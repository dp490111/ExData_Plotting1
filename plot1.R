#Create plot1

### Read data

setwd("U:/03 Professional Development/09 R Programming/03 Coursera/04 Exploratory Data Analysis/Week 1/exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

data1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

### Generate Plot

png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off
