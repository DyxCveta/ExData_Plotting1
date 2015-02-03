# script for create "plot2.png" plot
# ---

# load data to variable "d"
source("load_data.R")
# create .png-image, draw plot and disconnect
png("plot2.png",width = 480,height = 480)
with(d, plot(DateTime,Global_active_power,"l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()
