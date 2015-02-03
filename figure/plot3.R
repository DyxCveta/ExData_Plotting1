# script for create "plot3.png" plot
# ---

# load data to variable "d"
source("load_data.R")
# create .png-image, draw plot and disconnect
png("plot3.png",width = 480,height = 480)
plot(range(d$DateTime, na.rm=T), range(c(d$Sub_metering_1,d$Sub_metering_2,d$Sub_metering_3), na.rm=T), type='n',ylab="Energy sub metering",xlab="")
lines(d$DateTime, d$Sub_metering_1, col="black")
lines(d$DateTime, d$Sub_metering_2, col="red")
lines(d$DateTime, d$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=c(1,1,1))
dev.off()
