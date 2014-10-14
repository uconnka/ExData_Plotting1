
#code for reading the data 
infile<-read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")

infile_subset <- subset(infile, as.Date(Date, "%d/%m/%Y") >= "2007-02-01" & as.Date(Date, "%d/%m/%Y") <= "2007-02-02")




# code that creates the PNG file
png(file="plot1.png")

# code that creates the histogram
hist(infile_subset$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)",col="Red",ylim = c(0, 1200))

# code that switches the png device off
dev.off()


