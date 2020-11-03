# Checking files
if(!exists("householdData")){
  source(file = "loadData.R")
}

# Creating plot
png(filename = "plot1.png")
hist(householdData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kW)")
dev.off()
