# load data from .zip-archive
# ---

# .zip-archive and .txt-file names
file_zip_name <- "exdata-data-household_power_consumption.zip"
file_txt_name <- "household_power_consumption.txt"
# read table from .txt-file
data<-read.table(unz(file_zip_name, file_txt_name),header=T,sep=";",na.strings = "?",stringsAsFactors = F)
# create column "DateTime" with converted values from Date and Time columns
data$DateTime<-paste(data$Date,data$Time)
data$DateTime<-strptime(data$DateTime,"%d/%m/%Y %H:%M:%S")
# select need interval
d<-data[(data$DateTime>="2007-02-01 00:00:00" & data$DateTime<="2007-02-02 23:59:59"),]