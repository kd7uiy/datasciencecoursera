dat<-read.csv('household_power_consumption.txt',sep=';',na.strings='?')
dat$Date<-strptime(paste(dat$Date,dat$Time),format='%d/%m/%Y %H:%M:%S')
startDate<-strptime('2007-02-01',format='%Y-%m-%d')
endDate<-strptime('2007-02-02 23:59:59',format='%Y-%m-%d %H:%M:%S')
filt=dat$Date>=startDate & dat$Date<=endDate
png(filename='plot1.png',width=480,height=480,units="px")
with(dat,hist(Global_active_power[filt],col='red',xlab='Global Active Power (kilowatts)',ylab='Frequency',title='Global Active Power',main=NULL))
title('Global Active Power')
dev.off()