
df<-read.table("household_power_consumption.txt",sep = ";",header = TRUE)
df$Date<-as.character(df$Date)
df$Date<-as.Date(df$Date,"%d/%m/%Y")
df<-subset(df,df$Date %in% as.Date(c("2007-02-01","2007-02-02")))
df$date_time<-paste(df$Date,df$Time)
df$date_time<-ymd_hms(df$date_time)
df$Global_active_power<-as.numeric(as.character(df$Global_active_power))
Sys.setlocale("LC_TIME", "English")
png(filename = "plot2.png",width = 480,height = 480)
plot(df$date_time,df$Global_active_power,type="l",ylab = "Global active power (kilowatts)",xlab="")

dev.off()