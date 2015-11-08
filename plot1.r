################################
## Plot1: Global Active Power ##
################################

png(file = "plot1.png")
#pdf(file = "plot1.pdf")

#elcty = read.table("Project1_subset.txt", sep=";",col.names=TRUE)
#file1<-elcty[(elcty$Date=="1/2/2007" | elcty$Date=="2/2/2007"),]

elcty = read.table("Project1_subset.txt", sep=";", skip=1)
file1<-elcty[(elcty$V1=="1/2/2007" | elcty$V1=="2/2/2007"),]

hist(file1$V3,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off() ## Close the PDF file device