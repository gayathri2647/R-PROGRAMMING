install.packages("readxl")
library(readxl)
#import data from excel
setwd('C:/Users/Admin/Downloads/')
data <- read_excel("BDA.xlsx",sheet=5,range="A1:E19")
x<-data$Years
y<-data$Sales
#Create a line chart
plot(x,y,type="l",main="Operating performance",xlab="Years",ylab="Sales",col="blue")