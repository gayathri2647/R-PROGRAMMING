library(ggplot2)
library(readxl)

setwd("C:/Users/Admin/Downloads")

data <- read_excel("BDA.xlsx", sheet = 5, range = "A1:E19")

# check names
colnames(data)

df_multi <- data.frame(
  time = data$Years,
  values = c(data$Sales, data$VC, data$FC),
  group = rep(c("Sales","VC","FC"), each = 18)
)

plot(data$Years, data$Sales,
     main = "Scatter plot of sales over the years: 2007-24",
     xlab = "Years",
     ylab = "Sales in crores of Rupees",
     pch = 19,
     col = "blue")
