# code for reading the data 
infile<-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")

infile_subset <- subset(infile, as.Date(Date, "%d/%m/%Y") >= "2007-02-01" & as.Date(Date, "%d/%m/%Y") <= "2007-02-02")

# take subset in a 'new' file
new <- infile_subset

# create a new column called DT that is concat of DATE and TIME columns from the original input file
new$DT <- strptime(paste(new$Date, new$Time), format="%d/%m/%Y %H:%M:%S")


# Code that creates the PNG file
png(file="plot2.png")
plot(new$DT,new$Global_active_power,type="l",ylab="Global Active Power (Kilowatts)",xlab=" ")

# switch off the png device
dev.off()
