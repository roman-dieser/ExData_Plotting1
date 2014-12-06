hpc <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

hpcs <- subset(hpc, (Date == "1/2/2007") | (Date == "2/2/2007"))

hpcs$ct <- as.POSIXct(paste(hpcs$Date, hpcs$Time, sep=" "), format = "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)

plot(hpcs$Global_active_power ~ hpcs$ct, type='l', xlab='', ylab='Global Active Power (kilowatts)')

dev.off()


