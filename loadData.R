# Open data
householdData <- read.csv("household_power_consumption.txt", sep = ";")
message("Data loaded")


# Create subset
begdate <- as.POSIXct("2007-02-01")
enddate <- as.POSIXct("2007-02-03")
householdData$Date <- as.POSIXct(householdData$Date, format="%d/%m/%Y")
householdData <- householdData[householdData$Date >= begdate & householdData$Date < enddate, ]
message("Subset created")

# Create unique variable with date and time
dateTime <- paste(householdData$Date, householdData$Time)
householdData$DateTime <- as.POSIXct(dateTime)
householdData$Global_active_power <- as.numeric(householdData$Global_active_power)
message("Conversions complete.")

rm(begdate)
rm(enddate)