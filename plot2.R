##READING THE DATA
#Check file plot1.R

############################################

##CONSTRUCTING PLOT 2
plot(data$Time,data$Global_active_power, type="l",xlab="",ylab="Global active power (kilowatts)")

#Then we copy the plot to a PNG file
dev.copy(png, file="plot2.png")

#Finally we close the PNG device
dev.off()


