install.packages("readxl")
library(readxl)
#import data from excel
setwd('C:/Users/Admin/Downloads/')
data <- read_excel("BDA.xlsx",sheet=2,range="A2:E22",col_names = FALSE)
View(data)
v_data<-as.vector(as.matrix(data))

hist(v_data,breaks=10,main="histogram of share prices",
     xlab="share prices", ylab="Frequency", 
     col = "lightblue",border="black")