setwd("C://Users//sudamatya//Desktop//")

powerDT<-read.table("household_power_consumption.txt",sep=";",header = TRUE)

#filtering the date for the power consumption data with date of "1/2/2007" and  "2/2/2007"
powerDT_subset<-subset(powerDT,powerDT$Date=="1/2/2007" | powerDT$Date=="2/2/2007")

datetime <- strptime(paste(powerDT_subset$Date, powerDT_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(powerDT_subset$Global_active_power)

SubMeter1 <- as.numeric(powerDT_subset$Sub_metering_1)

SubMeter2 <- as.numeric(powerDT_subset$Sub_metering_2)

SubMeter3 <- as.numeric(powerDT_subset$Sub_metering_3)

plot(datetime, SubMeter1, type="l", ylab="Energy Submetering", xlab="")

lines(datetime, SubMeter2, type="l", col="red")

lines(datetime, SubMeter3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

