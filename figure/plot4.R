# script for create "plot4.png" plot
# ---

# load data to variable "d"
source("load_data.R")
# create .png-image, draw plot and disconnect
png("plot4.png",width = 480,height = 480)
par(mfrow=c(2,2))

# left-top plot
with(d, plot(DateTime,Global_active_power,"l",xlab="",ylab="Global Active Power"))

# right-top plot
with(d, plot(DateTime,Voltage,"l",xlab="datetime",ylab="Voltage"))

# left-bottom plot
plot(range(d$DateTime, na.rm=T), range(c(d$Sub_metering_1,d$Sub_metering_2,d$Sub_metering_3), na.rm=T), type='n',ylab="Energy sub metering",xlab="")
lines(d$DateTime, d$Sub_metering_1, col="black")
lines(d$DateTime, d$Sub_metering_2, col="red")
lines(d$DateTime, d$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=c(1,1,1))

# right-bottom plot
with(d, plot(DateTime,Global_reactive_power,"l",xlab="datetime",ylab="Global_reactive_power"))

dev.off()
