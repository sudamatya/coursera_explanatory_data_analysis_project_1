setwd("C://Users//sudamatya//Desktop//")

powerDT<-read.table("household_power_consumption.txt",sep=";",header = TRUE)

#filtering the date for the power consumption data with date of "1/2/2007" and  "2/2/2007"
powerDT_subset<-subset(powerDT,powerDT$Date=="1/2/2007" | powerDT$Date=="2/2/2007")

datetime <- strptime(paste(powerDT_subset$Date, powerDT_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(powerDT_subset$Global_active_power)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
