# script for create "plot1.png" plot
# ---

# load data to variable "d"
source("load_data.R")
# create .png-image, draw plot and disconnect
png("plot1.png",width = 480,height = 480)
hist(d$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()
