# Checking files
if(!exists("householdData")){
            source(file = "loadData.R")
}
Sys.setlocale(category = "LC_ALL", locale = "english")

# Creating plots
png(filename = "plot4.png")

par(mfcol = c(2,2))
# 1st subplot
with(householdData, plot(Global_active_power ~ DateTime, type="l", ylab="Global Active Power", xlab=""))
# 2nd subplot
with(householdData, { 
            plot(Sub_metering_1 ~ DateTime, type="l", ylab="", xlab="") 
            lines(Sub_metering_2 ~ DateTime, type="l", ylab="", xlab="", col = "red")
            lines(Sub_metering_3 ~ DateTime, type="l", ylab="", xlab="", col = "blue")
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1, c("Sub-metering 1","Sub-metering 2", "Sub-metering 3"), bty = "n")
title(ylab = "Energy sub metering")
# 3rd subplot
with(householdData, plot(Voltage ~ DateTime, type="l", ylab="Voltage", xlab="datetime"))
# 4th subplot
with(householdData, plot(Global_reactive_power ~ DateTime, type="l", ylab="Global Reactive Power", xlab="datetime"))

dev.off()

