dat<-read.csv('household_power_consumption.txt',sep=';',na.strings='?')
dat$Date<-strptime(paste(dat$Date,dat$Time),format='%d/%m/%Y %H:%M:%S')
startDate<-strptime('2007-02-01',format='%Y-%m-%d')
endDate<-strptime('2007-02-02 23:59:59',format='%Y-%m-%d %H:%M:%S')
filt=dat$Date>=startDate & dat$Date<=endDate
png(filename='plot3.png',width=480,height=480,units="px")
with(dat,plot(Date[filt],Sub_metering_1[filt],xlab='',ylab='Energy sub metering',type='n'))
with(dat,lines(Date[filt],Sub_metering_1[filt],col='black'))
with(dat,lines(Date[filt],Sub_metering_2[filt],col='red'))
with(dat,lines(Date[filt],Sub_metering_3[filt],col='blue'))
legend("topright",lty=1,col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))

dev.off()