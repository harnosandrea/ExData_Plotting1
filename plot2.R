mydata <- read.table(unzip("electric.zip"), sep=";", header=T, na.strings = "?")
mydata1<-mydata[mydata$Date=="1/2/2007"|mydata$Date=="2/2/2007",]
png("plot2.png", width = 481, height = 480)
plot(mydata1$Global_active_power, type="l", xaxt="n", ylab="Global Active Power (kilowatts)", xlab="")
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))
dev.off()