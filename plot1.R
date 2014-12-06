hpc <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

hpcs <- subset(hpc, (Date == "1/2/2007") | (Date == "2/2/2007"))

png("plot1.png", width=480, height=480)

hist(hpcs$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()


