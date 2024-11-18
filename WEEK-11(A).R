#Create a sequence of numbers between -10 and 10 incrementing by 0.1.
x<-seq(-10,10,by=.1)
#Choose the mean as 2.5 and standard deviation ans 0.5.
y<-dnorm(x,mean=2.3,sd=0.5)
#Give the chart a file name
png(file="dnorm3.png")
plot(x,y)
#Save the file
dev.off()

#Create a sequence of numbers between -10 and 10 incrementing by 0.2.
x<-seq(-10,10,by=.2)
#Choose the mean as 2.5 and standard deviation ans 2.
y<-pnorm(x,mean=2.3,sd=2)
#Give the chart a file name
png(file="pnorm3.png")
plot(x,y)
#Save the file
dev.off()

#Create a sequence of numbers between -10 and 10 incrementing by 0.02.
x<-seq(0,1,by=0.02)
#Choose the mean as 2.5 and standard deviation as 3.
y<-qnorm(x,mean=2,sd=1)
#Give the chart a file name
png(file="qnorm3.png")
plot(x,y)
#Save the file
dev.off()

#Create a sample of 50 numbers which are normally distributed
y<-rnorm(5)
#Give the chart a file name
png(file="rnorm3.png")
#plot the histogram for this sample
hist(y,main="Normal Distribution")
#Save the file
dev.off()