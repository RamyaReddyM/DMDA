library("MASS")
#print(head(Cars93))
#print(str(Cars93))
#Loading the mass library
#creating a dataframe from the main dataset
car_data<-data.frame(Cars93$AirBags,Cars93$Type)
#Creating a atble with the needed variables
car_data=table(Cars93$AirBags,Cars93$Type)
print(car_data)
print(chisq.test(car_data))