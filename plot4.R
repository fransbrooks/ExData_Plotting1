alldata <-     read.table(file = "/home/frans/household_power_consumption.txt", ##Extract entire .txt file
		header=TRUE, sep = ";",na.strings="?", 
		colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

plotdata <- subset(alldata, Date == "1/2/2007" | Date == "2/2/2007") ##Extract data according to relevant dates
x <- 1:length(plotdata[,"Date"]) 
y <- plotdata$Global_active_power
a <- plotdata[,"Sub_metering_1"]
b <- plotdata[,"Sub_metering_2"]
c <- plotdata[,"Sub_metering_3"]
d <- plotdata[,"Voltage"]
e <- plotdata[,"Global_reactive_power"]

png("plot4.png")	##Save plot to .png file
par(mfrow = c(2, 2))
plot(x,y, type = "l", xlab="Time",xaxt='n', ylab = "Global Active Power")
plot(x,d, type = "l", col="black", xaxt='n', xlab = "datetime", ylab = "Voltage")
plot(x,a, type = "l", col="black", xaxt='n', xlab = "Time", ylab = "Energy sub metering")
points(b, type = "l", col="red")
points(c , type = "l", col ="blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
plot(x,e, type = "l", col="black", xaxt='n', xlab = "datetime", ylab = "Global_reactive_power")
dev.off()