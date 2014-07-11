dat<-read.csv('household_power_consumption.txt',sep=';',na.strings='?')
dat$Date<-strptime(paste(dat$Date,dat$Time),format='%d/%m/%Y %H:%M:%S')
startDate<-strptime('2007-02-01',format='%Y-%m-%d')
endDate<-strptime('2007-02-02 23:59:59',format='%Y-%m-%d %H:%M:%S')
filt=dat$Date>=startDate & dat$Date<=endDate
png(filename='plot2.png',width=480,height=480,units="px")
with(dat,plot(Date[filt],Global_active_power[filt],xlab='',ylab='Global Active Power (kilowatts)',type='n'))
with(dat,lines(Date[filt],Global_active_power[filt]))
dev.off()