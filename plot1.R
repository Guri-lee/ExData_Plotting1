###############################################

##Exploratory data analyisis: Assignment 1

##############READING THE FILE################

#READING THE FILE

data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

# Select data from the dates 2007-02-01 and 2007-02-02
data <- data[grep("^1/2/2007$|^2/2/2007$",data$Date),]

# convert the Date and time to Date and time class
data$Date<-as.Date(data$Date, format="%d/%m/%Y")
data$Time <- strptime(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")


#################PLOT#########################

#CONSTRUCTING PLOT 1
#First we check on the screen device how the plot looks like
hist(data$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")

#Then we copy the plot to a PNG file
dev.copy(png, file="plot1.png")

#Finally we close the PNG device
dev.off()
