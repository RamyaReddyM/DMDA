install.packages("randomForest")
#Load the party package. It will automatically load other required packages
library(party)
#Print some records from the data set readinSKills
print(head(readingSkills))
#Load the party package. It will automatically load other required packages
library(party)
library(randomForest)
#Create the forest
out.forest<-randomForest(native~age+shoeSize+score,data=readingSkills)
#view the forest results
print(output.forest)

x<-c(18,19,22,25,27,28,41,45,51,55)
y<-c(14,15,15,17,18,22,25,25,27,34)
print(var.test(x,y))