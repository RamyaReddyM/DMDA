#Data load
data("iris")
#install the required packages
install.packages("caret")
install.packages("C50")
#Library invoke
library(caret)
library(C50)
#To make results consistent across the runs
set.seed(7)
#Data partition
inTraininglocal<-createDataPartition(iris$Species,p=.70,list=F)
training<-iris[inTraininglocal,]
testing<-iris[-inTraininglocal,]
#model building
model<-C5.0(Species~.,data=training)
#generate the model summary
summary(model)
#predict for test data set
pred<-predict.C5.0(model,testing[,-5]) #type="prob"
#Accuracy of the algorithm
a<-table(testing$Species,pred)
sum(diag(a))/sum(a)
#visulaize the decision tree
plot(model)