##READING THE DATA
#Check file plot1.R

##############################################

##CONSTRUCTING PLOT 4
#If trying to see the plot in the screen device and copying to a PNG file, as in plot2,
#the copy is not exact as the original plot, in this case we'll create the PNG file directly

#Open PNG device (skip this function if you want to see the plot on the screen device)
png(file="plot4.png")

#As it is a multiple plot, we indicate the plots and that we'll place them by rows

par(mfrow=c(2,2)) #four plots in 2 rows and 2 columns
with(data,{
  plot(Time,Global_active_power, type="l",xlab="",ylab="Global active power (kilowatts)")
  plot(Time,Voltage, type="l",xlab="datetime",ylab="Voltage")
  plot(Time, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
      lines(Time, Sub_metering_2, col="red")
      lines(Time, Sub_metering_3, col="blue")
      legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1), col=c("black","red", "blue"))
  plot(Time,Global_reactive_power, type="l",xlab="datetime",ylab="Global_reactive_power")
})

#Then we copy the plot to a PNG file
dev.copy(png, file="plot4.png")

#Finally we close the PNG device
dev.off()
