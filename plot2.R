# Checking files
if(!exists("householdData")){
            source(file = "loadData.R")
}

# Creating plot
png(filename = "plot2.png")
with(householdData, plot(Global_active_power ~ DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab=""))
dev.off()

