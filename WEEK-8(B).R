input<-mtcars[,c("am","mpg","hp")]
print(head(input))
#create regression model with combination of hp and am
#aov-analysis of variance
result<-aov(mpg~hp*am,data=input)
print(summary(result))
#create regression model without combination of hp and am i.e. they are independent
result<-aov(mpg~hp+am,data=input)
print(summary(result))

#plotting a graph
result1<-aov(mpg~hp*am,data=input)
result2<-aov(mpg~hp+am,data=input)
print(anova(result1,result2))
boxplot(anova(result1,result2))