install.packages("ggplot2")
install.packages("readxl")
library(ggplot2)
library(readxl)
#import data from excel
setwd('C:/Users/Admin/Downloads')
data <- read_excel("BDA.xlsx",sheet=4,range="A1:I19")
#create a boxplot
boxplot(I(Price * Quantity / 1000) ~ Region,
        data = data,
        main = "Boxplot of Sales by Regions",
        xlab = "Region",
        ylab = "Sales in Thousands of Rupees",
        col = "lightblue",
        border = "black")
