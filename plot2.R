# Checking files
if(!exists("householdData")){
            source(file = "loadData.R")
}
Sys.setlocale(category = "LC_ALL", locale = "english")

# Creating plot
png(filename = "plot2.png")
with(householdData, plot(Global_active_power ~ DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab=""))
dev.off()

