
df<-read.table("household_power_consumption.txt",sep = ";",header = TRUE)
df$Date<-as.character(df$Date)
df$Date<-as.Date(df$Date,"%d/%m/%Y")
df<-subset(df,df$Date %in% as.Date(c("2007-02-01","2007-02-02")))
df$Global_active_power<-as.numeric(df$Global_active_power)
png(filename = "plot1.png",width = 480,height = 480)
hist(df$Global_active_power,col = "red",main = "Global active power",xlab = "Global active power (kilowatts)",ylab = "Frequency")
dev.off()