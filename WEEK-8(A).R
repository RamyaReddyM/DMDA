#MEAN
#Basic mean calculation
x<-c(12,7,3,4.2,18,2,54,-21,8,-5)
result.mean<-mean(x)
print(result.mean)

#Calculate mean when data has NA
x<-c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
result.mean<-mean(x)
print(result.mean)
#not consider NA from data use na.rm=TRUE
result.mean<-mean(x,na.rm=TRUE)
print(result.mean)

#Remove Outliers (0.3 here means 3 outliers from end and from start are removed and mean for remaining are values is calculated)
x<-c(12,7,3,4.2,18,2,54,-21,8,-5)
result.mean<-mean(x,trim=0.3)
print(result.mean)

#MEDIAN
#Basic median calculation
x<-c(12,7,3,4.2,18,2,54,-21,8,-5)
result.median<-median(x)
print(result.median)

#Calculate median when data has NA
x<-c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
result.median<-median(x)
print(result.median)
#not consider NA from data use na.rm=TRUE
result.median<-median(x,na.rm=TRUE)
print(result.median)


#MODE
#Create function
getmode<-function(v){
  uniqv<-unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}
#create vector with numbers
v<-c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
#calculate the mean using the user defined function
result<-getmode(v)
print(result)
#create vector with characters
charv<-c("a","it","the","it","it")
#calculate the mean using the user defined function
result<-getmode(charv)
print(result)