# Checking files
if(!exists("householdData")){
            source(file = "loadData.R")
}
Sys.setlocale(category = "LC_ALL", locale = "english")

# Creating plot
png(filename = "plot3.png")
with(householdData, { 
            plot(Sub_metering_1 ~ DateTime, type="l", ylab="", xlab="") 
            lines(Sub_metering_2 ~ DateTime, type="l", ylab="", xlab="", col = "red")
            lines(Sub_metering_3 ~ DateTime, type="l", ylab="", xlab="", col = "blue")
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1, c("Sub-metering 1","Sub-metering 2", "Sub-metering 3"))
title(ylab = "Energy sub metering")
dev.off()

