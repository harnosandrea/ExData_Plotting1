mydata <- read.table(unzip("electric.zip"), sep=";", header=T, na.strings = "?")
mydata1<-mydata[mydata$Date=="1/2/2007"|mydata$Date=="2/2/2007",]
png("plot1.png", width = 481, height = 480)
hist(mydata1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()