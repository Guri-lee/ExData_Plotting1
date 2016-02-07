##READING THE DATA
#Check file plot1.R

##############################################

##CONSTRUCTING PLOT 3
#If trying to see the plot in the screen device and copying to a PNG file, as in plot2,
#the copy is not exact as the original plot, in this case we'll create the PNG file directly

#Open PNG device (skip this function if you want to see the plot on the screen device)
png(file="plot3.png")

#We plot each "Energy sub metering" variable one by one by adding different coloured lines

plot(data$Time, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")

#Then we add the legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1), col=c("black","red", "blue"))


#Finally we close the PNG device
dev.off()

