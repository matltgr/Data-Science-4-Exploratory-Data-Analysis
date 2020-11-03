# Open data
householdData <- read.csv("household_power_consumption.txt", sep = ";")
message("Data loaded")

# Date/Times management
householdData$DateTime <- paste(householdData$Date, " ", householdData$Time)
householdData$DateTime <- strptime(householdData$DateTime, format = "%d/%m/%Y %H:%M:%S")
householdData[, 1:2] <- NULL
message("Date conversion complete.")

# Create subset
begdate <- as.POSIXct("2007-02-01")
enddate <- as.POSIXct("2007-02-03")
householdData <- householdData[householdData$DateTime >= begdate & householdData$DateTime < enddate, ]
householdData <- householdData[!is.na(householdData$DateTime),]
message("Subset created")
