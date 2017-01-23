##saving the text file in R as a table
data <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

##only using data from 2007/02/01 and 2007/02/02
actual_data<-rbind(housedata[housedata$Date=="1/2/2007",],housedata[housedata$Date=="2/2/2007",])

actual_data$Date <- as.Date(actual_data$Date,"%d/%m/%Y")
actual_data<-cbind(actual_data, "DateTime" = as.POSIXct(paste(actual_data$Date, actual_data$Time)))

##saving the plot as a png file
png("plot1.png", width=480, height=480)
hist(as.numeric(house_a_data$Global_active_power), col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")
dev.off()
