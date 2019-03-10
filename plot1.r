setwd("C://Users//sudamatya//Desktop//")

powerDT<-read.table("household_power_consumption.txt",sep=";",header = TRUE)

#checking the number of rows
nrow(powerDT)#2075259

#checking the number of columns
ncol(powerDT)#9

#filtering the date for the power consumption data with date of "1/2/2007" and  "2/2/2007"
powerDT_subset<-subset(powerDT,powerDT$Date=="1/2/2007" | powerDT$Date=="2/2/2007")

#ploting the histogram
hist(as.numeric(as.character(powerDT_subset$Global_active_power)),col = "red",main="Global Active Power",xlab = "Global Active Power(kilowatts)")

