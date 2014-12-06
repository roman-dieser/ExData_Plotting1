hpc <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

hpcs <- subset(hpc, (Date == "1/2/2007") | (Date == "2/2/2007"))

hpcs$ct <- as.POSIXct(paste(hpcs$Date, hpcs$Time, sep=" "), format = "%d/%m/%Y %H:%M:%S")

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(hpcs$Global_active_power ~ hpcs$ct, type='l', xlab='', ylab='Global Active Power (kilowatts)')

plot(hpcs$Voltage ~ hpcs$ct, type='l', xlab='datetime', ylab='Voltage')

plot(hpcs$Sub_metering_1 ~ hpcs$ct, type='l', xlab='', ylab='Energy sub metering')
 
lines(hpcs$Sub_metering_2 ~ hpcs$ct, col="red")

lines(hpcs$Sub_metering_3 ~ hpcs$ct, col="blue")
 
legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty=c(1,1,1), bty="n")

plot(hpcs$Global_reactive_power ~ hpcs$ct, type='l', xlab='datetime', ylab='Global_reactive_power') 

dev.off()


