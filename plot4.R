mydata <- read.table(unzip("electric.zip"), sep=";", header=T, na.strings = "?")
mydata1<-mydata[mydata$Date=="1/2/2007"|mydata$Date=="2/2/2007",]
png("plot4.png", width = 481, height = 480)
par(mfrow=c(2,2))
plot(mydata1$Global_active_power, type="l", xaxt="n", ylab="Global Active Power (kilowatts)", xlab="")
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))
plot(mydata1$Voltage, type="l", xaxt="n", ylab="Voltage", xlab="datetime")
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))

plot(mydata1$Sub_metering_1, type="l", xaxt="n", ylab="Energy sub metering", xlab="")
lines(mydata1$Sub_metering_2, type="l", col="red")
lines(mydata1$Sub_metering_3, type="l", col="blue")

axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))
legend("topright", lty=1, col=1:3, legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(mydata1$Global_reactive_power, type="l", xaxt="n", xlab="datetime")
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))
par(mfrow=c(1,1))
dev.off()