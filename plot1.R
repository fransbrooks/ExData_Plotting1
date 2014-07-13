alldata <-     read.table(file = "/home/frans/household_power_consumption.txt", ##Extract entire .txt file
		header=TRUE, sep = ";",na.strings="?", 
		colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

plotdata <- subset(plotdata, Date == "1/2/2007" | Date == "2/2/2007") ##Extract data according to relevant dates
png("plot1.png")	##Save plot to .png file
hist(plotdata$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", xaxt='n', col="red") ##Create histogram plot
axis(side=1,at = seq(0,6,2)) ##Add x-axis
dev.off()