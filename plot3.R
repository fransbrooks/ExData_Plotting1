alldata <-     read.table(file = "/home/frans/household_power_consumption.txt", ##Extract entire .txt file
		header=TRUE, sep = ";",na.strings="?", 
		colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

plotdata <- subset(alldata, Date == "1/2/2007" | Date == "2/2/2007") ##Extract data according to relevant dates
x <- 1:length(plotdata[,"Date"])
a <- plotdata[,"Sub_metering_1"]
b <- plotdata[,"Sub_metering_2"]
c <- plotdata[,"Sub_metering_3"]
png("plot3.png")
plot(x,a, type = "l", col="black", xaxt='n', xlab = "Time", ylab = "Energy sub metering")
points(b, type = "l", col="red")
points(c , type = "l", col ="blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()

