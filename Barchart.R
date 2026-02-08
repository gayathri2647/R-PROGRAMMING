install.packages("readxl")
library(readxl)
#import data from excel
setwd('F:/R LAB-04')
data <- read_excel("BDA.xlsx",sheet=4,range="A1:I19")
View(data)
#create a bar chart
barplot(counts,main="Bar chart of Regional counts of Sales",xlab="Regions",ylab ="Frequency",col="blue",border="black")