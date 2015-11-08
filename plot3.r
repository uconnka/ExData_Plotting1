
#########################################
## Plot3: Sub_metering 1 2 & 3 Vs Days ##
#########################################




# code for reading the data 
infile<-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")

infile_subset <- subset(infile, as.Date(Date, "%d/%m/%Y") >= "2007-02-01" & as.Date(Date, "%d/%m/%Y") <= "2007-02-02")

# take subset in a 'new' file
new <- infile_subset

# create a new column called DT that is concat of DATE and TIME columns from the original input file
new$DT <- strptime(paste(new$Date, new$Time), format="%d/%m/%Y %H:%M:%S")

# Code that creates the PNG file
png(file = "plot3.png")

# code that create the plot
plot(new$DT,new$Sub_metering_1,type="n", xlab="", ylab="Energy Sub metering")
lines(new$DT, new$Sub_metering_1,col="black")
lines(new$DT, new$Sub_metering_2,col="red")
lines(new$DT, new$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1), lwd=c(3,3,3),col=c("black","red", "blue"))


dev.off() ## Close the PNG file device