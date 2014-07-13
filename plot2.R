alldata <-     read.table(file = "/home/frans/household_power_consumption.txt", ##Extract entire .txt file
		header=TRUE, sep = ";",na.strings="?", 
		colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

plotdata <- subset(alldata, Date == "1/2/2007" | Date == "2/2/2007") ##Extract data according to relevant dates
x <- 1:length(plotdata[,"Date"]) 
y <- plotdata$Global_active_power
png("plot2.png")	##Save plot to .png file
plot(x,y, type = "l", xlab="Time",xaxt='n', ylab = "Global Active Power (kilowatts)")
dev.off()